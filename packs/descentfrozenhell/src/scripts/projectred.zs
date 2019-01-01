import mods.immersiveengineering.AlloySmelter;

// Removals
recipes.remove(<projectred-core:screwdriver>);
recipes.remove(<microblockcbe:saw_diamond>);
recipes.remove(<projectred-core:resource_item:410>);
recipes.remove(<projectred-core:resource_item:250>);
recipes.remove(<projectred-fabrication:ic_machine>);
recipes.remove(<projectred-fabrication:ic_machine:1>);

// Additions
// Screwdriver
recipes.addShaped(<projectred-core:screwdriver>, [[<ore:stickSteel>, null, null],[null, <ore:ingotSteel>, <ore:dyeBlue>], [null, <ore:dyeBlue>, <ore:ingotSteel>]]);
// Diamond Saw
recipes.addShaped(<microblockcbe:saw_diamond>, [[null, null, null],[<ore:stickWood>, <ore:stickSteel>, <ore:stickSteel>], [<ore:stickWood>, <ore:gemDiamond>, <ore:stickSteel>]]);
// Motor
recipes.addShaped(<projectred-core:resource_item:410> * 2, [[null, <ore:stickSteel>, null],[<ore:stone>, <projectred-core:resource_item:400>, <ore:stone>], [<ore:stone>, <projectred-core:resource_item:400>, <ore:stone>]]);
// Sandy Coal
recipes.addShaped(<projectred-core:resource_item:250>, [[<ore:sand>, <ore:sand>, <ore:sand>],[<ore:sand>, <ore:blockFuelCoke>, <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
AlloySmelter.addRecipe(<projectred-core:resource_item:300> * 2, <ore:sand>, <ore:blockFuelCoke>, 6000);

// Fabrication
recipes.addShaped(<projectred-fabrication:ic_machine>, [[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<projectred-fabrication:ic_machine:1>, [[<ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>],[<ore:obsidian>,<ore:gemDiamond>,<ore:obsidian>],[<ore:ingotSteel>,<ore:plankWood>,<ore:ingotSteel>]]);
