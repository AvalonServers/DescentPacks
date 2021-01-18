import sys, json, time

# arg1: input file, arg2: output folder

if len(sys.argv) < 3:
	print("preprocess.py <input file> <output file>\n")
	quit()

infile = sys.argv[1]
outfile = sys.argv[2]

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

print(json.dumps(jinfile, indent = 4))

ininfo = jinfile["info"]
inmods = jinfile["mods"]

mlinfo = ininfo["modloader"].split("/")

output = {
	"$schema": "../schema/versionPack.schema.json",
	"version": ininfo["packVersion"],
	"srcDir": "src", # sort this out later
	"mcVersion": ininfo["mcVersion"],
	"modLoader": {
		"type": "modloader." + mlinfo[0],
		"version": mlinfo[0][0].upper()+mlinfo[0][1:]+"_"+ininfo["mcVersion"].split(".",1)[1].replace(".","_")+"/"+ininfo["mcVersion"]+"/"+mlinfo[1] # no idea how this will work with fabric as it doesnt seem to be implemented yet
	},
	"mods": { # here we go with the spicy part
	}
}

for mod in inmods["both"]:
	if type(mod) == str:
		mtype, mid = mod.split("/",1)
		saveloc = None
		savename = None
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
	#print(mtype, mid, saveloc, savename)

print("\n")
print(json.dumps(output, indent=4))
