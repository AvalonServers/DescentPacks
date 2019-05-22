#import IItemstack;
import mods.jei.JEI;

# Get rid of the demoniacally gargantuan drum 
val demon_drum = <extrautils2:drum:3>;
JEI.removeAndHide(demon_drum);
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

recipes.addShaped(<extrautils2:trashcan>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <ore:chest>                       , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
recipes.addShaped(<extrautils2:trashcanfluid>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <minecraft:bucket>                , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <ore:blockRedstone>               , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, <immersiveengineering:connector:*>, <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);
val receptionCoil = <thermalfoundation:material:513>;
recipes.addShaped(<extrautils2:trashcanenergy>, [
    [null            , <ore:plateIron>                   , null            ],
    [<ore:plateSteel>, receptionCoil                     , <ore:plateSteel>],
    [null            , <ore:plateSteel>                  , null            ]
]);

# New Climograph Base Unit recipie
recipes.removeByRecipeName("extrautils2:terraformer_base");

val computerALU = <opencomputers:material:10>;
val machineFrame = <thermalexpansion:frame:0>;
recipes.addShapedMirrored(<extrautils2:terraformer:9>, [
    [null, computerALU, null],
    [<ore:treeSapling>, machineFrame, <ore:treeSapling>],
    [null, <ore:gemDiamond>, null]
]);


# Keep angel block recipie as default

# Redstone clock recipie is good enough

