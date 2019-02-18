import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Centrifuge;
import mods.immersiveengineering.Mixer;

val purifiedBucket = <forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000});
val purifiedBottle = <toughasnails:purified_water_bottle>;
var steelGlass = <thermalfoundation:glass_alloy:0>;
var electrumGlass = <thermalfoundation:glass_alloy:1>;
var silverGlass = <thermalfoundation:glass_alloy:2>;
var bronzeGlass = <thermalfoundation:glass_alloy:3>;
var signalumGlass = <thermalfoundation:glass_alloy:5>;
var lumiumGlass = <thermalfoundation:glass_alloy:6>;

// Make Distilled water -> Purified water // not going to work
//mods.immersivepetroleum.Distillation.addRecipe([<liquid:purified_water> * 100], [], <liquid:dist_water>, 200, 200, []);

// Make Distilled water + Aluminium dust -> Purified water
Mixer.addRecipe(<liquid:purified_water>, <liquid:dist_water>, [<ore:dustAluminum>], 100);

// add Purified Water recipe
Transposer.addExtractRecipe(<liquid:purified_water> * 250, purifiedBottle, 100);
Transposer.addFillRecipe(purifiedBottle, <minecraft:glass_bottle>, <liquid:purified_water> * 250, 100);

// Machine frame is slightly harder
val machineFrame = <thermalexpansion:frame:0>;
recipes.remove(machineFrame);
recipes.addShaped(machineFrame, [[<ore:ingotSteel>, steelGlass, <ore:ingotSteel>], [steelGlass, <ore:gearSteel>, steelGlass], [<ore:ingotSteel>, <opencomputers:material:11>, <ore:ingotSteel>]]);

// Device frame is slightly harder
val deviceFrame = <thermalexpansion:frame:64>;
recipes.remove(deviceFrame);
recipes.addShaped(deviceFrame, [[<ore:ingotSteel>, steelGlass, <ore:ingotSteel>], [steelGlass, <ore:gearSteel>, steelGlass], [<ore:ingotSteel>, <opencomputers:material:11>, <ore:ingotSteel>]]);

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
recipes.remove(signalumBlend);
recipes.remove(lumiumBlend);
recipes.remove(enderBlend);
recipes.addShapeless(bronzeBlend * 8, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>, <ore:dustTin>, <ore:dustNickel>, <ore:dustAluminum>]);
recipes.addShapeless(signalumBlend * 4, [<ore:dustHellfire>, <ore:dustHellfire>, <ore:dustHellfire>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000})]);
recipes.addShapeless(lumiumBlend * 8, [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000})]);
recipes.addShapeless(enderBlend * 4, [<ore:dustVoid>, <ore:dustVoid>, <ore:dustVoid>, <ore:dustPlatinum>, <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000})]);

Centrifuge.removeRecipe(bronzeBlend);
Centrifuge.removeRecipe(signalumBlend);
Centrifuge.removeRecipe(lumiumBlend);
Centrifuge.removeRecipe(enderBlend);
// TODO: new ones here