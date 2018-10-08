val purifiedBucket = <forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000});

// Removals
recipes.remove(<toughasnails:rain_collector>);
recipes.remove(<toughasnails:temperature_coil:1>);
recipes.remove(<toughasnails:temperature_coil>);
recipes.remove(<toughasnails:thermometer>);
recipes.remove(<toughasnails:canteen>);
recipes.remove(<toughasnails:charcoal_filter>);

recipes.remove(<tanaddons:thirst_quencher>);
recipes.remove(<tanaddons:portable_temp_regulator>);
recipes.remove(<tanaddons:temp_regulator>);

furnace.remove(purifiedBucket);

// Additions
// Rain Collector
recipes.addShaped(<toughasnails:rain_collector>, [[<ore:ingotIron>, <toughasnails:charcoal_filter>, <ore:ingotIron>],[<ore:ingotIron>, <minecraft:bucket>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
// Coils
recipes.addShaped(<toughasnails:temperature_coil>, [[<toughasnails:ice_cube>, <minecraft:water_bucket>, <toughasnails:ice_cube>],[<toughasnails:ice_cube>, <ore:stone>, <toughasnails:ice_cube>], [<ore:stone>, <ore:blockRedstone>, <ore:stone>]]);
recipes.addShaped(<toughasnails:temperature_coil:1>, [[<toughasnails:magma_shard>, <minecraft:lava_bucket>, <toughasnails:magma_shard>],[<toughasnails:magma_shard>, <ore:stone>, <toughasnails:magma_shard>], [<ore:stone>, <ore:blockRedstone>, <ore:stone>]]);
// Thermometer
recipes.addShaped(<toughasnails:thermometer>, [[null, <ore:paneGlass>, null],[<ore:paneGlass>, <ore:quicksilver>, <ore:paneGlass>], [null, <ore:paneGlass>, null]]);
// Empty Canteen
recipes.addShaped(<toughasnails:canteen>, [[<ore:string>, <ore:leather>, <ore:string>], [<ore:leather>, <minecraft:glass_bottle>, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>]]);
// Charcoal Filter (reduced to only outputting one, and buffed)
recipes.addShaped(<toughasnails:charcoal_filter>, [[<ore:paper>, <ore:paper>, <ore:paper>], [<ore:dustCharcoal>, <ore:dustCharcoal>, <ore:dustCharcoal>], [<ore:paper>, <ore:paper>, <ore:paper>]]);

// TE Thirst Quencher (now mid tier)
recipes.addShaped(<tanaddons:thirst_quencher>, [[<ore:ingotSteel>, <toughasnails:charcoal_filter>, <ore:ingotSteel>], [<ore:ingotSteel>, <toughasnails:canteen>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:oc:materialCU>, <ore:ingotSteel>]]);
// TE Portable Temp Regulator (now mid tier)
recipes.addShaped(<tanaddons:portable_temp_regulator>, [[<ore:ingotSteel>, <toughasnails:temperature_coil>, <ore:ingotSteel>], [<ore:ingotSteel>, <tanaddons:temp_regulator>, <ore:ingotSteel>], [<ore:ingotSteel>, <toughasnails:temperature_coil:1>, <ore:ingotSteel>]]);
// TE Temp Regulator (now mid tier)
recipes.addShaped(<tanaddons:temp_regulator>, [[<toughasnails:magma_shard>, <ore:oc:materialCU>, <toughasnails:magma_shard>], [<toughasnails:temperature_coil>, <ore:blockSteel>, <toughasnails:temperature_coil:1>], [<toughasnails:ice_cube>, <ore:oc:materialALU>, <toughasnails:ice_cube>]]);

recipes.addShapeless(purifiedBucket, [<minecraft:water_bucket>.noReturn(), <toughasnails:charcoal_filter>]);