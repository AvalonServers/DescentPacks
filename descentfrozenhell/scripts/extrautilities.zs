#import IItemstack;
import mods.jei.JEI;

# Get rid of the demoniacally gargantuan drum 
#val demon_drum = <extrautils2:drum:3>;
#JEI.removeAndHide(demon_drum);
#demon_drum.creativeTab(null); # Doesn't seem to work anyway

# New Watering Can recipie
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShapedMirrored(<extrautils2:wateringcan:1000>,[
    [<ore:nuggetIron>, null, null],
    [<ore:nuggetIron>, <minecraft:bucket>, <ore:nuggetIron>], 
    [null, <ore:nuggetIron>, null]]);

# New trash can recipie
recipes.removeByRecipeName("extrautils2:trash_can");
recipes.removeByRecipeName("extrautils2:trash_can_fluid");
recipes.removeByRecipeName("extrautils2:trash_can_energy");

# regular
recipes.addShaped(<extrautils2:trashcan>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <ore:chest>                       , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);

# fluid
recipes.addShaped(<extrautils2:trashcanfluid>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <minecraft:bucket>                , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);

# energy
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <ore:blockRedstone>               , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
val receptionCoil = <thermalfoundation:material:513>;
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, receptionCoil                     , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <immersiveengineering:connector:*>, <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);

# Keep angel block recipie as default

# Redstone clock recipie is good enough

# ethereal glass
val quartzGlass = <appliedenergistics2:quartz_glass>;
recipes.remove(<extrautils2:ineffableglass:0>);
recipes.addShapeless(<extrautils2:ineffableglass:0>, [<extrautils2:ineffableglass:1>, <ore:torchRedstoneActive>]);
recipes.addShapeless(<extrautils2:ineffableglass:0>, [<extrautils2:ineffableglass:2>]);

# ineffable glass
recipes.remove(<extrautils2:ineffableglass:2>);
recipes.addShaped(<extrautils2:ineffableglass:2>, [
    [quartzGlass, quartzGlass, quartzGlass],
    [quartzGlass, <ore:dustVoid>, quartzGlass],
    [quartzGlass, quartzGlass, quartzGlass]
]);
recipes.addShapeless(<extrautils2:ineffableglass:2>, [<extrautils2:ineffableglass:0>]);

# dark ineffable glass
recipes.remove(<extrautils2:ineffableglass:3>);
recipes.addShapeless(<extrautils2:ineffableglass:3>, [<extrautils2:ineffableglass:2>, <ore:dyeBlack>]);
recipes.addShapeless(<extrautils2:ineffableglass:3>, [<extrautils2:ineffableglass:0>, <ore:dyeBlack>]);
recipes.addShapeless(<extrautils2:ineffableglass:2>, [<extrautils2:ineffableglass:3>, <ore:dyeWhite>]);

# terraformer
recipes.remove(<extrautils2:terraformer:0>);
recipes.addShaped(<extrautils2:terraformer:0>, [
    [null, <appliedenergistics2:molecular_assembler>, null], 
    [<appliedenergistics2:condenser>, <extrautils2:terraformer:9>, <appliedenergistics2:condenser>],
    [<ore:oc:printer>, <ore:oc:disassembler>, <ore:oc:printer>]
]);

# antenna
recipes.remove(<extrautils2:terraformer:1>);
recipes.addShaped(<extrautils2:terraformer:1>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:quantum_link>, <appliedenergistics2:material:41>], 
    [<ore:ingotSteel>, <ore:treeSapling>, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, null]
]);

# humidifier
recipes.remove(<extrautils2:terraformer:2>);
recipes.addShaped(<extrautils2:terraformer:2>, [
    [<minecraft:water_bucket>, <ore:blockCopper>, <minecraft:water_bucket>], 
    [<minecraft:water_bucket>, <extrautils2:terraformer:9>, <minecraft:water_bucket>],
    [null, <ore:oc:materialCU>, null]
]);

# dehumidifier
recipes.remove(<extrautils2:terraformer:3>);
recipes.addShaped(<extrautils2:terraformer:3>, [
    [<ore:sand>, <ore:blockCopper>, <ore:sand>], 
    [<ore:sand>, <extrautils2:terraformer:9>, <ore:sand>],
    [null, <ore:oc:materialCU>, null]
]);

# heater
recipes.remove(<extrautils2:terraformer:4>);
recipes.addShaped(<extrautils2:terraformer:4>, [
    [<minecraft:lava_bucket>, <ore:blockCopper>, <minecraft:lava_bucket>], 
    [<minecraft:lava_bucket>, <extrautils2:terraformer:9>, <minecraft:lava_bucket>],
    [null, <ore:oc:materialCU>, null]
]);

# cooler
recipes.remove(<extrautils2:terraformer:5>);
recipes.addShaped(<extrautils2:terraformer:5>, [
    [<minecraft:snowball>, <ore:blockCopper>, <minecraft:snowball>], 
    [<minecraft:snowball>, <extrautils2:terraformer:9>, <minecraft:snowball>],
    [null, <ore:oc:materialCU>, null]
]);

# dehostilifier
recipes.remove(<extrautils2:terraformer:6>);
recipes.addShaped(<extrautils2:terraformer:6>, [
    [<minecraft:mycelium>, <industrialforegoing:mob_imprisonment_tool>, <minecraft:mycelium>], 
    [<minecraft:mycelium>, <extrautils2:terraformer:9>, <minecraft:mycelium>],
    [null, <ore:oc:materialCU>, null]
]);

# magic absorption
recipes.remove(<extrautils2:terraformer:7>);
recipes.addShaped(<extrautils2:terraformer:7>, [
    [<minecraft:anvil>, <extrautils2:magicapple>, <minecraft:anvil>], 
    [<minecraft:anvil>, <extrautils2:terraformer:9>, <minecraft:anvil>],
    [null, <ore:oc:materialCU>, null]
]);

# magic infuser
recipes.remove(<extrautils2:terraformer:8>);
recipes.addShaped(<extrautils2:terraformer:8>, [
    [<minecraft:enchanting_table>, <extrautils2:magicapple>, <minecraft:enchanting_table>], 
    [<minecraft:enchanting_table>, <extrautils2:terraformer:9>, <minecraft:enchanting_table>],
    [null, <ore:oc:materialCU>, null]
]);

# climograph
recipes.remove(<extrautils2:terraformer:9>);

val computerALU = <opencomputers:material:10>;
val machineFrame = <thermalexpansion:frame:0>;
recipes.addShapedMirrored(<extrautils2:terraformer:9>, [
    [<ore:pearlFluix>, computerALU, <ore:pearlFluix>],
    [<ore:treeSapling>, machineFrame, <ore:treeSapling>],
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
]);