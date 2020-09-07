import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Centrifuge;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.AlloySmelter;

// hardened glass types
var copperGlass = <thermalfoundation:glass:0>;
var tinGlass = <thermalfoundation:glass:1>;
var silverGlass = <thermalfoundation:glass:2>;
var leadGlass = <thermalfoundation:glass:3>;
var aluminiumGlass = <thermalfoundation:glass:4>;
var nickelGlass = <thermalfoundation:glass:5>;
var platinumGlass = <thermalfoundation:glass:6>;
var iridiumGlass = <thermalfoundation:glass:7>;
var manaInfusedGlass = <thermalfoundation:glass:8>;

var steelGlass = <thermalfoundation:glass_alloy:0>;
var electrumGlass = <thermalfoundation:glass_alloy:1>;
var invarGlass = <thermalfoundation:glass_alloy:2>;
var bronzeGlass = <thermalfoundation:glass_alloy:3>;
var constantanGlass = <thermalfoundation:glass_alloy:4>;
var signalumGlass = <thermalfoundation:glass_alloy:5>;
var lumiumGlass = <thermalfoundation:glass_alloy:6>;
var enderiumGlass = <thermalfoundation:glass_alloy:7>;

val hardenedGlass = <ore:blockGlassHardened>;

// Add glass recipies to IE Alloy Smelter (fixes #35)
AlloySmelter.addRecipe(copperGlass * 2, <ore:dustCopper>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(tinGlass * 2, <ore:dustTin>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(silverGlass * 2, <ore:dustSilver>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(leadGlass * 2, <ore:dustLead>, <ore:dustObsidian> * 4, 2000);
AlloySmelter.addRecipe(aluminiumGlass * 2, <ore:dustAluminum>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(nickelGlass * 2, <ore:dustNickel>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(platinumGlass * 2, <ore:dustPlatinum>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(iridiumGlass * 2, <ore:dustIridium>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(manaInfusedGlass * 2, <ore:dustMithril>, <ore:blockGlassHardened> * 2, 2000);

AlloySmelter.addRecipe(steelGlass * 2, <ore:dustSteel>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(electrumGlass * 2, <ore:dustElectrum>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(invarGlass * 2, <ore:dustInvar>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(bronzeGlass * 2, <ore:dustBronze>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(constantanGlass * 2, <ore:dustConstantan>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(signalumGlass * 2, <ore:dustSignalum>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(lumiumGlass * 2, <ore:dustLumium>, <ore:blockGlassHardened> * 2, 2000);
AlloySmelter.addRecipe(enderiumGlass * 2, <ore:dustEnderium>, <ore:blockGlassHardened> * 2, 2000);

// Machine frame is slightly harder
val machineFrame = <thermalexpansion:frame:0>;
recipes.remove(machineFrame);
recipes.addShaped(machineFrame, [[<ore:ingotSteel>, hardenedGlass, <ore:ingotSteel>], [hardenedGlass, <ore:gearSteel>, hardenedGlass], [<ore:ingotSteel>, <opencomputers:material:11>, <ore:ingotSteel>]]);

// Device frame is slightly harder
val deviceFrame = <thermalexpansion:frame:64>;
recipes.remove(deviceFrame);
recipes.addShaped(deviceFrame, [[<ore:ingotSteel>, <minecraft:glass>, <ore:ingotSteel>], [<minecraft:glass>, <ore:gearSteel>, <minecraft:glass>], [<ore:ingotSteel>, <opencomputers:material:11>, <ore:ingotSteel>]]);

// Upgrades are progressively harder
var hardenedKit = <thermalfoundation:upgrade:0>;
var reinforcedKit = <thermalfoundation:upgrade:1>;
var signalumKit = <thermalfoundation:upgrade:2>;
var resonantKit = <thermalfoundation:upgrade:3>;
recipes.remove(hardenedKit);
recipes.remove(reinforcedKit);
recipes.remove(signalumKit);
recipes.remove(resonantKit);
recipes.addShaped(hardenedKit, [[bronzeGlass, <ore:ingotInvar>, bronzeGlass], [<ore:ingotInvar>, <ore:gearBronze>, <ore:ingotInvar>], [bronzeGlass, <ore:ingotInvar>, bronzeGlass]]);
recipes.addShaped(reinforcedKit, [[silverGlass, <ore:ingotElectrum>, silverGlass], [<ore:ingotElectrum>, <ore:gearSilver>, <ore:ingotElectrum>], [silverGlass, <ore:ingotElectrum>, silverGlass]]);
recipes.addShaped(signalumKit, [[electrumGlass, <ore:ingotSignalum>, electrumGlass], [<ore:ingotSignalum>, <ore:gearElectrum>, <ore:ingotSignalum>], [electrumGlass, <ore:ingotSignalum>, electrumGlass]]);
recipes.addShaped(resonantKit, [[lumiumGlass, <ore:ingotEnderium>, lumiumGlass], [<ore:ingotEnderium>, <ore:gearLumium>, <ore:ingotEnderium>], [lumiumGlass, <ore:ingotEnderium>, lumiumGlass]]);

// Morbs are harder
var morb = <thermalexpansion:morb:0>;
var morbRes = <thermalexpansion:morb:1>;
recipes.remove(morb);
recipes.remove(morbRes);

recipes.addShapeless(morb * 4, [<minecraft:soul_sand>, <ore:crystalSlag>, <ore:slimeball>, <ore:nuggetEnderium>]);
recipes.addShaped(morbRes, [[signalumGlass, morb, signalumGlass], [morb, <appliedenergistics2:material:47>, morb], [signalumGlass, morb, signalumGlass]]);

// changed blend recipes to be bit more realistic
var bronzeBlend = <thermalfoundation:material:99>;
var signalumBlend = <thermalfoundation:material:101>;
var lumiumBlend = <thermalfoundation:material:102>;
var enderBlend = <thermalfoundation:material:103>;

recipes.remove(bronzeBlend);
//recipes.remove(signalumBlend);
recipes.remove(lumiumBlend);
recipes.remove(enderBlend);
recipes.addShapeless(bronzeBlend * 8, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>, <ore:dustTin>, <ore:dustNickel>, <ore:dustAluminum>]);
//recipes.addShapeless(signalumBlend * 4, [<todo>, <todo>, <todo>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000})]);
recipes.addShapeless(lumiumBlend * 8, [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000})]);
recipes.addShapeless(enderBlend * 4, [<ore:dustVoid>, <ore:dustVoid>, <ore:dustVoid>, <ore:dustPlatinum>, <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000})]);

Centrifuge.removeRecipe(bronzeBlend);
//Centrifuge.removeRecipe(signalumBlend);
Centrifuge.removeRecipe(lumiumBlend);
Centrifuge.removeRecipe(enderBlend);
// TODO: new ones here




// FLUXDUCT DEPRECATION STUFF HERE!

// Give the fluxducts names so we can refer to them later...
val leadstoneFluxduct = <thermaldynamics:duct_0:0>;
val hardenedFluxduct = <thermaldynamics:duct_0:1>;
val emptyRedstoneFluxduct = <thermaldynamics:duct_0:6>;
val redstoneFluxduct = <thermaldynamics:duct_0:2>;
val emptySignalumFluxduct = <thermaldynamics:duct_0:7>;
val signalumFluxduct = <thermaldynamics:duct_0:3>;
val emptyResonantFluxduct = <thermaldynamics:duct_0:8>;
val resonantFluxduct = <thermaldynamics:duct_0:4>;
val emptyCryoStablisedFluxduct = <thermaldynamics:duct_0:9>;
val cryoStablisedFluxduct = <thermaldynamics:duct_0:5>;

// Give the enderio conduits names so we can refer to them later...
val silverConduit = <enderio:item_endergy_conduit:5>;
val enhancedConduit = <enderio:item_power_conduit:1>;
val energeticSilverConduit = <enderio:item_endergy_conduit:7>;
val enderConduit = <enderio:item_power_conduit:2>;
val crystallineConduit = <enderio:item_endergy_conduit:8>;
val melodicConduit = <enderio:item_endergy_conduit:10>;
val stellarConduit = <enderio:item_endergy_conduit:11>;

// Remove all recipes for fluxducts!
recipes.removeByRegex("thermaldynamics:duct_0.*");
Transposer.removeFillRecipe(emptyRedstoneFluxduct, <liquid:redstone>);
Transposer.removeFillRecipe(emptySignalumFluxduct, <liquid:redstone>);
Transposer.removeFillRecipe(emptyResonantFluxduct, <liquid:redstone>);
Transposer.removeFillRecipe(emptyCryoStablisedFluxduct, <liquid:cryotheum>);

// Convert fluxducts to enderIO energy conduits
recipes.addShapeless(silverConduit, [leadstoneFluxduct]);
recipes.addShapeless(enhancedConduit, [hardenedFluxduct]);
recipes.addShapeless(enhancedConduit, [emptyRedstoneFluxduct]);
recipes.addShapeless(energeticSilverConduit, [redstoneFluxduct]);
recipes.addShapeless(energeticSilverConduit, [emptySignalumFluxduct]);
recipes.addShapeless(enderConduit, [signalumFluxduct]);
recipes.addShapeless(enderConduit, [emptyResonantFluxduct]);
recipes.addShapeless(crystallineConduit, [resonantFluxduct]);
recipes.addShapeless(melodicConduit, [emptyCryoStablisedFluxduct]);
recipes.addShapeless(stellarConduit, [cryoStablisedFluxduct]);

