// Make a cheaper recipe for flint and steel using steel nuggets
recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint>, <ore:nuggetSteel>]);

// Allow steel blend to be smelted in vanilla furnace
furnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>);

// allow smelting of slag dust to IE slag
furnace.addRecipe(<immersiveengineering:material:7>, <ore:dustSlag>);

// Make diorite count as marble...
<ore:stoneMarble>.add(<minecraft:stone:3>);
//<ore:stoneMarble>.add(<minecraft:stone:4>);
<ore:stoneMarblePolished>.add(<minecraft:stone:4>);
recipes.addShapeless(<chisel:marble2:7>, [<ore:stoneDiorite>]);
recipes.addShapeless(<chisel:marble1:2>, [<ore:stoneDioritePolished>]);
