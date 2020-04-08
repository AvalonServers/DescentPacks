import mods.appliedenergistics2.Inscriber;
import mods.thaumcraft.Infusion;

// other mods
val comp = <storagedrawers:compdrawers>;

val logic = <appliedenergistics2:material:22>;
val calculation = <appliedenergistics2:material:23>;
val engineering = <appliedenergistics2:material:24>;
val silicon = <appliedenergistics2:material:20>;
val controller = <appliedenergistics2:controller>;
val grindstone = <appliedenergistics2:grindstone>;
val inscriber = <appliedenergistics2:inscriber>;
val skyStone = <appliedenergistics2:smooth_sky_stone_block>;
val store1x = <appliedenergistics2:material:35>;

val certusSeed = <appliedenergistics2:crystal_seed:0>;
val fluixSeed = <appliedenergistics2:crystal_seed:1200>;

// Removals
//Inscriber.removeRecipe(logic); // Logic Processor
//Inscriber.removeRecipe(calculation);
//Inscriber.removeRecipe(engineering);
Inscriber.removeRecipe(silicon);
recipes.remove(controller);
recipes.remove(grindstone);
recipes.remove(inscriber);
recipes.remove(store1x);
recipes.remove(fluixSeed);

// Additions
// Replace with OpenComputers processor items
//Inscriber.addRecipe(logic, <opencomputers:component:1>, false, <appliedenergistics2:material:18>, silicon);
//Inscriber.addRecipe(calculation, <opencomputers:component:2>, false, <appliedenergistics2:material:16>, silicon);
//Inscriber.addRecipe(engineering, <opencomputers:component:2>, false, <appliedenergistics2:material:17>, silicon);
Inscriber.addRecipe(silicon, <projectred-core:resource_item:301>, true, <appliedenergistics2:material:19>);

// Make AE blocks a bit more expensive
// controller now needs 2x enderium blocks, 2x steel blocks, 4x fluix blocks
recipes.addShaped(controller, [[<ore:blockEnderium>, <ore:plateFluix>, <ore:blockEnderium>], [<ore:plateFluix>, engineering, <ore:plateFluix>], [<ore:blockSteel>, <ore:plateFluix>, <ore:blockSteel>]]);
recipes.addShaped(grindstone, [[<ore:stone>, <ore:gearSteel>, <ore:stone>], [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>], [<ore:cobblestone>, <ore:gemQuartz>, <ore:cobblestone>]]);
recipes.addShaped(inscriber, [[<ore:blockSteel>, <ore:craftingPiston>, <ore:blockSteel>], [<ore:crystalFluix>, null, null], [<ore:blockSteel>, <ore:craftingPiston>, <ore:blockSteel>]]);
recipes.addShaped(store1x, [[comp, <ore:crystalCertusQuartz>, <storagedrawers:controller>], [<ore:crystalCertusQuartz>, logic, <ore:crystalCertusQuartz>], [comp, <ore:crystalCertusQuartz>, comp]]);
recipes.addShapeless(fluixSeed, [<ore:sand>, <ore:dustFluix>, <ore:dustPetrotheum>]);

// Make Cores a bit more expensive


//insane magic shit
//Infusion.registerRecipe("dustMana", "", <thermalfoundation:material:1028>, 25, [<aspect:perditio>, <aspect:machina>], <ore:dustEnderium>, [<thaumcraft:primordial_pearl>, <thaumcraft:causality_collapser>, <thaumcraft:causality_collapser>, <thaumcraft:void_seed>, <thaumcraft:ingot:1>]);
//recipes.addShapeless(<thermalfoundation:material:72> * 2, [<ore:dustMana>, <ore:dustSteel>, <ore:dustEnder>, <appliedenergistics2:material:45>]);


// Convert AE silicon to ProjectRed silicon!
recipes.addShapeless(<projectred-core:resource_item:301>, [<appliedenergistics2:material:5>]);

// remove old silicon recipe 
furnace.remove(<appliedenergistics2:material:5>);
