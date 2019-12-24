//recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint>, <ore:nuggetSteel>]);

// alternative clay recipe
//recipes.addShapeless(<minecraft:clay_ball> * 9, [<minecraft:water_bucket>, <ore:pileSand>, <minecraft:water_bucket>, <ore:pileSand>, <ore:quartz>, <ore:pileSand>, <ore:pileDirt>, <ore:pileSand>, <ore:pileDirt>]);

// Allow steel blend to be smelted in vanilla furnace
furnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>);

// allow smelting of slag dust to IE slag
furnace.addRecipe(<immersiveengineering:material:7>, <ore:dustSlag>);