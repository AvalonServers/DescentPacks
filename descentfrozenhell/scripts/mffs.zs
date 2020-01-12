# define
var force_crystal = <modularforcefieldsystem:forcepower_crystal>;
var monazit = <ore:dustMonazit>;
var focus_matrix = <modularforcefieldsystem:projector_focus_matrix>;
var machine_frame = <thermalexpansion:frame>;
var empty_card = <modularforcefieldsystem:empty_card>;

# migitate card duplication bug
empty_card.maxStackSize = 1;

var chip1 = <ore:oc:circuitChip1>;
var esteel = <ore:ingotElectricalSteel>;

################
### machines ###
################

# security station
recipes.addShaped(<modularforcefieldsystem:adv_security>, [
    [esteel, <opensecurity:biometric_reader>, esteel],
    [chip1, machine_frame, chip1],
    [esteel, chip1, esteel]
]);

# defense station
recipes.addShaped(<modularforcefieldsystem:area_defense>, [
    [esteel, <opensecurity:entity_detector>, esteel],
    [<ore:pearlEnderEye>, machine_frame, <ore:pearlEnderEye>],
    [esteel, <ore:ingotHardCarbon>, esteel]
]);

# capacitor
recipes.addShaped(<modularforcefieldsystem:capacitor>, [
    [esteel, force_crystal, esteel],
    [force_crystal, machine_frame, force_crystal],
    [esteel, force_crystal, esteel]
]);

# control system
recipes.addShaped(<modularforcefieldsystem:control_system>, [
    [esteel, <ore:ingotSignalum>, esteel],
    [chip1, machine_frame, chip1],
    [esteel, chip1, esteel]
]);

# extractor
recipes.addShaped(<modularforcefieldsystem:extractor>, [
    [esteel, chip1, esteel],
    [force_crystal, machine_frame, force_crystal],
    [esteel, <minecraft:piston>, esteel]
]);

# projector
recipes.addShaped(<modularforcefieldsystem:projector>, [
    [esteel, focus_matrix, esteel],
    [focus_matrix, machine_frame, focus_matrix],
    [<ore:pearlEnderEye>, <industrialforegoing:laser_lens>, <ore:pearlEnderEye>]
]);

# secure storage
recipes.addShaped(<modularforcefieldsystem:security_storage>, [
    [esteel, chip1, esteel],
    [<ore:chest>, machine_frame, <ore:chest>],
    [esteel, <ore:chest>, esteel]
]);

#############
### items ###
#############

# empty card
recipes.addShaped(<modularforcefieldsystem:empty_card>, [
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, chip1, <ore:paper>],
    [<ore:paper>, monazit, <ore:paper>]
]);

# force power crystal
recipes.remove(force_crystal);
recipes.addShaped(force_crystal, [
    [monazit, <ore:gemCrystalFlux>, monazit],
    [monazit, <ore:gemCrystalFlux>, monazit],
    [monazit, monazit, monazit]
]);

# forcicium cell
recipes.addShaped(<modularforcefieldsystem:forcicium_cell>, [
    [monazit, force_crystal, monazit],
    [force_crystal, <enderio:item_basic_capacitor:2>, force_crystal],
    [monazit, force_crystal, monazit]
]);

# multi-tool (wrench)
recipes.addShapeless(<modularforcefieldsystem:multitool_wrench>, [<thermalfoundation:wrench>, force_crystal, <modularforcefieldsystem:empty_card>]);

################
### upgrades ###
################

# capacitor: capacity
recipes.addShaped(<modularforcefieldsystem:upgrade_capacity>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, force_crystal, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# capacitor: range
recipes.addShaped(<modularforcefieldsystem:upgrade_range>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, <ore:ingotSignalum>, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# extractor: booster
recipes.addShaped(<modularforcefieldsystem:extractor_upgrade_booster>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, <thermalexpansion:augment:128>, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# projector: distance
recipes.remove(<modularforcefieldsystem:projector_distance>);
recipes.addShaped(<modularforcefieldsystem:projector_distance>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, <ore:gemRuby>, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# projector: strength
recipes.remove(<modularforcefieldsystem:projector_strength>);
recipes.addShaped(<modularforcefieldsystem:projector_strength>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, <ore:gemSapphire>, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# projector: focus
recipes.addShaped(<modularforcefieldsystem:projector_focus_matrix>, [
    [null, <ore:plateEnergeticAlloy>, null],
    [<ore:plateEnergeticAlloy>, <ore:gemPeridot>, <ore:plateEnergeticAlloy>],
    [null, monazit, null]
]);

# module: advanced cube
recipes.addShaped(<modularforcefieldsystem:module_advcube>, [
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
    [null, <modularforcefieldsystem:module_cube>, null],
    [<ore:blockGlassHardened>, <ore:ingotConstructionAlloy>, <ore:blockGlassHardened>]
]);

# module: containment
recipes.addShaped(<modularforcefieldsystem:module_containment>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <modularforcefieldsystem:module_cube>, <ore:blockGlassHardened>],
    [null, <ore:ingotConstructionAlloy>, null]
]);

# module: cube
recipes.addShaped(<modularforcefieldsystem:module_cube>, [
    [null, <ore:blockGlassHardened>, null],
    [<ore:blockGlassHardened>, <industrialforegoing:laser_lens>, <ore:blockGlassHardened>],
    [null, <ore:blockGlassHardened>, null]
]);

# module: deflector
recipes.addShaped(<modularforcefieldsystem:module_deflector>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [null, <modularforcefieldsystem:module_wall>, null]
]);

# module: diagonal wall
recipes.addShaped(<modularforcefieldsystem:module_diagonal_wall>, [
    [<ore:blockGlassHardened>, null,<ore:blockGlassHardened>],
    [null, <modularforcefieldsystem:module_wall>, null],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>]
]);

# module: sphere
recipes.addShaped(<modularforcefieldsystem:module_sphere>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <industrialforegoing:laser_lens>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]
]);

# module: tube
recipes.addShaped(<modularforcefieldsystem:module_tube>, [
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <industrialforegoing:laser_lens>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>]
]);

# module: wall
recipes.addShaped(<modularforcefieldsystem:module_wall>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [null, <industrialforegoing:laser_lens>, null],
    [null, null, null]
]);

# option: cutter
recipes.addShaped(<modularforcefieldsystem:option_block_breaker>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <minecraft:diamond_pickaxe>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: camoflage
recipes.addShaped(<modularforcefieldsystem:option_camoflage>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <ore:oc:chameliumBlock>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: defence station
recipes.addShaped(<modularforcefieldsystem:option_defense_station>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <minecraft:diamond_sword>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: field fusion
recipes.addShaped(<modularforcefieldsystem:option_field_fusion>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, chip1, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: dome
recipes.addShaped(<modularforcefieldsystem:option_field_manipulator>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <ore:blockGlass>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: jammer
recipes.addShaped(<modularforcefieldsystem:option_field_jammer>, [
    [null, focus_matrix, null],
    [<ore:plateElectricalSteel>, focus_matrix, <ore:plateElectricalSteel>],
    [null, focus_matrix, null]
]);

# option: mob killer
recipes.addShaped(<modularforcefieldsystem:option_mob_defense>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <minecraft:bow>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: sponge
recipes.addShaped(<modularforcefieldsystem:option_sponge>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <minecraft:sponge>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: zapper
recipes.addShaped(<modularforcefieldsystem:option_touch_damage>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <immersiveengineering:metal_decoration0:2>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);

# option: light
recipes.addShaped(<modularforcefieldsystem:option_light>, [
    [null, <ore:plateElectricalSteel>, null],
    [<ore:plateElectricalSteel>, <ore:glowstone>, <ore:plateElectricalSteel>],
    [null, monazit, null]
]);