#import IItemstack;
import mods.jei.JEI;

# Get rid of the demoniacally gargantuan drum 
val demon_drum = <extrautils2:drum:3>;
JEI.removeAndHide(demon_drum);
#demon_drum.creativeTab(null); # Doesn't seem to work anyway

# New Watering Can recipie
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShapedMirrored(<extrautils2:wateringcan:1000>,
[[<ore:nuggetIron>, null, null],
[<ore:nuggetIron>, <minecraft:bucket>, <ore:nuggetIron>], 
[null, <ore:nuggetIron>, null]]);

# Keep angel block recipie as default

