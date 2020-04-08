// Removals
//recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");
recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");
recipes.removeByRecipeName("immersiveengineering:stone_decoration/insulating_glass");

// remove sand concrete recipe, so slag is required
recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete");
// replace main kiln brick sandstone with concrete
recipes.removeByRecipeName("immersiveengineering:stone_decoration/alloybrick");

// Additions
//recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>],[<minecraft:brick>, <ore:blockNetherSludge>, <minecraft:brick>], [<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>]]);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<minecraft:clay_ball>, <ore:ingotBrickNether>, <minecraft:clay_ball>], [<ore:ingotBrickNether>, <immersiveengineering:stone_decoration:4>, <ore:ingotBrickNether>], [<minecraft:clay_ball>, <ore:ingotBrickNether>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:8> * 2, [[<ore:oc:chamelium>, <ore:blockGlass>, <ore:oc:chamelium>], [<ore:dustIron>, <ore:dyeGreen>, <ore:dustIron>], [<ore:oc:chamelium>, <ore:blockGlass>, <ore:oc:chamelium>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:10> * 2, [[<ore:concrete>, <ore:ingotBrick>], [<ore:ingotBrick>, <ore:concrete>]]);

// Add iron dust -> steel for blast furnace
mods.immersiveengineering.BlastFurnace.addRecipe(<immersiveengineering:metal:8>, <ore:dustIron>, 1200, <immersiveengineering:material:7>);
