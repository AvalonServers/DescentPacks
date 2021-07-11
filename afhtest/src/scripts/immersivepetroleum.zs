// add IP bitumen to oredict
<ore:crystalCrudeOil>.add(<immersivepetroleum:material:0>);

// remove non oredict recipes
recipes.remove(<immersivepetroleum:stone_decoration:0>);

// add oredict recipes
recipes.addShaped(<immersivepetroleum:stone_decoration:0> * 12,[[<ore:crystalSlag>,<ore:crystalCrudeOil>,<ore:crystalSlag>],[<ore:gravel>,<minecraft:water_bucket>,<ore:gravel>],[<ore:crystalSlag>,<ore:crystalCrudeOil>,<ore:crystalSlag>]]); // slag variant
recipes.addShaped(<immersivepetroleum:stone_decoration:0> * 8,[[<ore:sand>,<ore:crystalCrudeOil>,<ore:sand>],[<ore:gravel>,<minecraft:water_bucket>,<ore:gravel>],[<ore:sand>,<ore:crystalCrudeOil>,<ore:sand>]]); // sand variant
