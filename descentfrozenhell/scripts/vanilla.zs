// Make a cheaper recipe for flint and steel using steel nuggets
recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint>, <ore:nuggetSteel>]);

// Allow steel blend to be smelted in vanilla furnace
furnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>);

// allow smelting of slag dust to IE slag
furnace.addRecipe(<immersiveengineering:material:7>, <ore:dustSlag>);