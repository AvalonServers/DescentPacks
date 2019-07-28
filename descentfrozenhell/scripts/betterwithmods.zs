import mods.betterwithmods.Crucible;
import mods.betterwithmods.Mill;

// Removals
recipes.removeByRecipeName("betterwithmods:decompress/material.diamond_ingot_compress");

// Additions
Mill.addRecipe([<ore:stone>], [<minecraft:cobblestone>]);
Mill.addRecipe([<ore:cobblestone>], [<minecraft:gravel>]);
Mill.addRecipe([<ore:gravel>], [<minecraft:sand>]);

// Soulforged steel uses steel instead
//Crucible.remove(<betterwithmods:material:14>);
//Crucible.addStoked([<ore:blockSoulUrn>, <ore:ingotSteel>, <ore:dustCarbon>, <ore:dustSaltpeter>, <betterwithmods:material:38>], [<betterwithmods:material:14>, <betterwithmods:urn>]);