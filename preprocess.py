import sys, json, time

# arg1: input file, arg2: output folder

if len(sys.argv) < 3:
	print("preprocess.py <input file> <output folder>\n")
	quit()

infile = sys.argv[1]
outdir = sys.argv[2]

infiled = ""
with open(infile, "r") as injson:
	infiled = injson.read()

# comment parser
cursi = 0
instring = False
incomment = False
opdone = False
pcommenti = -1
ninfile = infiled
remsec = []
while True:
	stringpos = infiled.find("\"", cursi)
	if not incomment:
		commentpos = infiled.find("//", cursi)
		mlcommentpos = infiled.find("/*", cursi)
		if commentpos == -1:
			commentpos = len(infiled) + 1
		if mlcommentpos == -1:
			mlcommentpos = len(infiled) + 1
		if commentpos < mlcommentpos:
			commenttype = "//"
		else:
			commenttype = "/*"
			commentpos = mlcommentpos
	else:
		if commenttype == "//":
			commentpos = infiled.find("\n", cursi)
		else:
			commentpos = infiled.find("*/", cursi)
	if stringpos == -1:
		stringpos = len(infiled) + 1
	if not instring and not incomment and stringpos < commentpos:
		instring = True
		cursi = stringpos + 1
		#print("instr")
	elif not instring and not incomment and commentpos < stringpos:
		incomment = True
		if commenttype == "//":
			cursi = commentpos + 1
		else:
			cursi = mlcommentpos + 1
		pcommenti = cursi - 1
		#print("incomment")
	elif not instring and incomment:
		incomment = False
		if commenttype == "//":
			cursi = commentpos
		else:
			cursi = commentpos + 2
		if pcommenti > 0:
			remsec.append((pcommenti, cursi))
		#print("outcomment")
	elif instring and not incomment:
		instring = False
		cursi = stringpos + 1
		#print("outstr")
	#time.sleep(0.5)
	#print(cursi, stringpos, instring, incomment, commentpos)
	if stringpos > len(infiled) and commentpos > len(infiled) and mlcommentpos > len(infiled):
		break
for rems in reversed(remsec):
	ninfile = ninfile[:rems[0]] + ninfile[rems[1]:]

#print(ninfile)

jinfile = json.loads(ninfile)

#print(json.dumps(jinfile, indent = 4))

ininfo = jinfile["info"]
inmods = jinfile["mods"]

mlinfo = ininfo["modloader"].split("/")

output = {
	"$schema": "../schema/versionPack.schema.json",
	"version": ininfo["packVersion"],
	"srcDir": ininfo["packSource"],
	"mcVersion": ininfo["mcVersion"],
	"modloader": {
		"type": "modloader." + mlinfo[0],
		"version": mlinfo[0][0].upper()+mlinfo[0][1:]+"_"+ininfo["mcVersion"].split(".",1)[1].replace(".","_")+"/"+ininfo["mcVersion"]+"/"+mlinfo[1] # no idea how this will work with fabric as it doesnt seem to be implemented yet
	},
	"mods": [ # here we go with the spicy part
	]
}

outmeta = {
	"$schema": "../schema/metaPack.schema.json",
	"title": ininfo["packName"],
	"authors": ininfo["packAuthors"],
	"icon": ininfo["packIcon"],
	"uploadBaseUrl": ininfo["packUrl"]
}

for modcat in inmods:
	for mod in inmods[modcat]:
		if type(mod) == str:
			mtype, mid = mod.split("/",1)
			saveloc = None
			savename = None
			description = None
		elif type(mod) == dict:
			mtype, mid = mod["mod"].split("/",1)
			if "location" in mod:
				saveloc = mod["location"]
			else:
				saveloc = None
			if "filename" in mod:
				savename = mod["filename"]
			else:
				savename = None
			if "description" in mod:
				description = mod["description"]
			else:
				description = None
		if "." in mtype:
			mtype, rtype = mtype.split(".",1)
		else:
			rtype = None
		if mtype == "curseforge":
			if rtype == "resourcepack":
				output["mods"].append({
					"type": "curse",
					"projectName": "Resourcepack/"+mid
				})
			else:
				output["mods"].append({
					"type": "curse",
					"projectName": "Forge/"+mid
				})
		elif mtype == "direct":
			output["mods"].append({
				"type": "direct",
				"directProperties": {
					"url": mid
				}
			})
			if "id" in mod:
				output["mods"][-1]["id"] = mod["id"]
			else:
				output["mods"][-1]["id"] = mid.rsplit(".",1)[0].lower().replace("-","_").replace(".","_")
		elif mtype == "jenkins":
			output["mods"].append({
				"type": "jenkins",
				"jenkinsProperties": {
					"jenkinsUrl": mid,
					"job": mod["job"]
				}
			})
			if "id" in mod:
				output["mods"][-1]["id"] = mod["id"]
			else:
				output["mods"][-1]["id"] = mod["job"].lower().replace("-","_").replace(".","_")
		else:
			output["mods"].append({
				"type": "noop",
				"description": "unknown type: "+mtype+" ("+mid+")."
			})
		if saveloc:
			output["mods"][-1]["folder"] = saveloc
		if savename:
			output["mods"][-1]["fileName"] = savename
		if description:
			output["mods"][-1]["description"] = description
		if modcat == "client":
			output["mods"][-1]["side"] = "CLIENT"
		elif modcat == "server":
			output["mods"][-1]["side"] = "SERVER"
		elif modcat == "optional":
			output["mods"][-1]["side"] = "CLIENT"
			output["mods"][-1]["optional"] = {
				"selected": False
			}
		#print(mtype, mid, saveloc, savename)

#print(json.dumps(output, indent=4))
#print("\n")
#print(json.dumps(outmeta, indent=4))

with open(outdir+"/modpack.meta.json", "w") as of:
	of.write(json.dumps(outmeta, indent=4))

with open(outdir+"/v"+ininfo["packVersion"]+".voodoo.json", "w") as of:
	of.write(json.dumps(output, indent=4))
