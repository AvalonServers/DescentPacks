// buff recipes a bit
recipes.remove(<teslacorelib:machine_case>);
recipes.remove(<teslacorelib:energy_tier1>);
recipes.remove(<teslacorelib:energy_tier2>);
recipes.remove(<teslacorelib:speed_tier1>);
recipes.remove(<teslacorelib:speed_tier2>);

recipes.addShaped(<teslacorelib:machine_case>, [[<ore:ingotSteel>, <ore:blockSheetmetalSteel>, <ore:ingotSteel>], [<ore:blockSheetmetalSteel>, <ore:blockRedstone>, <ore:blockSheetmetalSteel>], [<ore:ingotSteel>, <opencomputers:material:11>, <ore:ingotSteel>]]);
recipes.addShaped(<teslacorelib:energy_tier1>, [[null, <ore:gearGold>, null], [<ore:dustRedstone>, <teslacorelib:base_addon>, <ore:dustRedstone>], [<ore:dustRedstone>, <ore:oc:cpu2>, <ore:dustRedstone>]]);
recipes.addShaped(<teslacorelib:energy_tier2>, [[null, <ore:gearDiamond>, null], [<ore:dustRedstone>, <teslacorelib:base_addon>, <ore:dustRedstone>], [<ore:dustRedstone>, <ore:oc:cpu3>, <ore:dustRedstone>]]);
recipes.addShaped(<teslacorelib:speed_tier1>, [[<ore:dustRedstone>, <ore:gearGold>, <ore:dustRedstone>], [<ore:oc:cpu2>, <teslacorelib:base_addon>, <ore:oc:cpu2>], [<ore:dustRedstone>, <ore:gearGold>, <ore:dustRedstone>]]);
recipes.addShaped(<teslacorelib:speed_tier2>, [[<ore:dustRedstone>, <ore:gearDiamond>, <ore:dustRedstone>], [<ore:oc:cpu3>, <teslacorelib:base_addon>, <ore:oc:cpu3>], [<ore:dustRedstone>, <ore:gearDiamond>, <ore:dustRedstone>]]);
// alt upgrade tier2
recipes.addShapeless(<teslacorelib:energy_tier2>, [<ore:gearDiamond>, <teslacorelib:energy_tier1>, <ore:oc:cpu3>]);
recipes.addShapeless(<teslacorelib:speed_tier2>, [<ore:gearDiamond>, <teslacorelib:speed_tier1>, <ore:oc:cpu3>, <ore:oc:cpu3>]);