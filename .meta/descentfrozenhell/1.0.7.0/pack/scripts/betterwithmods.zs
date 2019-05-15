import mods.betterwithmods.Crucible;
import mods.betterwithmods.Mill;

// Removals
recipes.removeByRecipeName("thermalfoundation:material_5");
recipes.removeByRecipeName("betterwithmods:items/material/material.diamond_ingot");

// Additions
Mill.addRecipe([<ore:stone>], [<minecraft:cobblestone>]);
Mill.addRecipe([<ore:cobblestone>], [<minecraft:gravel>]);
Mill.addRecipe([<ore:gravel>], [<minecraft:sand>]);

recipes.addShapeless(<betterwithmods:material:45>, [<ore:ingotSteel>, <ore:gemDiamond>, <betterwithmods:material:39>]);

// Soulforged steel uses steel instead
//Crucible.remove(<betterwithmods:material:14>);
//Crucible.addStoked([<ore:blockSoulUrn>, <ore:ingotSteel>, <ore:dustCarbon>, <ore:dustSaltpeter>, <betterwithmods:material:38>], [<betterwithmods:material:14>, <betterwithmods:urn>]);