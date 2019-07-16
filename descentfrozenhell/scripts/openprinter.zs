// Remove old recipes
recipes.removeShaped(<openprinter:printer>, [[<minecraft:iron_nugget>, <minecraft:redstone>, <minecraft:iron_nugget>],[<opencomputers:material:7>, <opencomputers:material:4>, <opencomputers:material:7>], [<minecraft:iron_nugget>, <minecraft:redstone>, <minecraft:iron_nugget>]]);
recipes.removeShaped(<openprinter:printer_ink_color>, [[<minecraft:dye:1>, <minecraft:dye:2>, <minecraft:dye:4>],[null, <minecraft:iron_nugget>, null], [null, null, null]]);
recipes.removeShaped(<openprinter:filecabinet>, [[<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],[<minecraft:iron_nugget>, <minecraft:chest>, <minecraft:iron_nugget>], [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>]]);
recipes.removeShaped(<openprinter:printer_ink_color>, [[<minecraft:dye:1>, <minecraft:dye:2>, <minecraft:dye:4>],[null, <openprinter:printer_ink_color>, null], [null, null, null]]);

// Add new recipes
recipes.addShaped(<openprinter:printer>, [[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>],[<opencomputers:material:7>, <opencomputers:material:4>, <opencomputers:material:7>], [<ore:plateIron>, <openprinter:filecabinet>, <ore:plateIron>]]);
recipes.addShaped(<openprinter:printer_ink_color>, [[<ore:dyeCyan>, <ore:dyeMagenta>, <ore:dyeYellow>],[null, <ore:nuggetIron>, null], [null, null, null]]);
recipes.addShaped(<openprinter:filecabinet>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<openprinter:printer_ink_color>, [[<ore:dyeCyan>, <ore:dyeMagenta>, <ore:dyeYellow>],[null, <openprinter:printer_ink_color>, null], [null, null, null]]);

