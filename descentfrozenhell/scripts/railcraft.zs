// buff recipes a bit
recipes.removeByRecipeName("railcraft:locomotive_electric#0$1");

recipes.addShaped(<railcraft:locomotive_electric>, [
    [<minecraft:redstone_lamp>, <ore:plateSteel>, null], 
    [<railcraft:charge:5>, <ore:blockChargeBatteryRechargeable>, <railcraft:charge:5>], 
    [<ore:gearSteel>, <minecraft:minecart>, <ore:gearSteel>]
    ]);