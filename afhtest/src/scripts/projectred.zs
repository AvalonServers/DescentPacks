import mods.immersiveengineering.AlloySmelter;

// Removals
recipes.remove(<projectred-core:screwdriver>);
recipes.remove(<microblockcbe:saw_diamond>);
recipes.remove(<projectred-core:resource_item:410>);
recipes.remove(<projectred-core:resource_item:250>);
recipes.remove(<projectred-fabrication:ic_machine>);
recipes.remove(<projectred-fabrication:ic_machine:1>);

// Additions
// Screwdriver
recipes.addShaped(<projectred-core:screwdriver>, [[<ore:stickSteel>, null, null],[null, <ore:ingotSteel>, <ore:dyeBlue>], [null, <ore:dyeBlue>, <ore:ingotSteel>]]);
// Diamond Saw
recipes.addShaped(<microblockcbe:saw_diamond>, [[null, null, null],[<ore:stickWood>, <ore:stickSteel>, <ore:stickSteel>], [<ore:stickWood>, <ore:gemDiamond>, <ore:stickSteel>]]);
// Motor
recipes.addShaped(<projectred-core:resource_item:410> * 2, [[null, <ore:stickSteel>, null],[<ore:stone>, <projectred-core:resource_item:400>, <ore:stone>], [<ore:stone>, <projectred-core:resource_item:400>, <ore:stone>]]);
// Sandy Coal
recipes.addShaped(<projectred-core:resource_item:250>, [[<ore:sand>, <ore:sand>, <ore:sand>],[<ore:sand>, <ore:blockFuelCoke>, <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
AlloySmelter.addRecipe(<projectred-core:resource_item:300> * 2, <ore:sand>, <ore:blockFuelCoke>, 6000);

// Fabrication
recipes.addShaped(<projectred-fabrication:ic_machine>, [[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<projectred-fabrication:ic_machine:1>, [[<ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>],[<ore:obsidian>,<ore:gemDiamond>,<ore:obsidian>],[<ore:ingotSteel>,<ore:plankWood>,<ore:ingotSteel>]]);

// Make red alloy wire cheaper...
recipes.removeByRecipeName("projectred-transmission:red_alloy_wire");
recipes.addShapedMirrored("dfh/red_alloy_wire", <projectred-transmission:wire:0> * 64, [
    [<ore:ingotRedAlloy>],
    [<ore:ingotRedAlloy>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/0_framed");
recipes.addShapedMirrored("dfh/framed_red_alloy_wire", <projectred-transmission:framed_wire:0>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:0>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/red_alloy_wire_unframed", <projectred-transmission:wire:0>, [<projectred-transmission:framed_wire:0>]);
recipes.addShapeless("dfh/red_alloy_wire_uninsulated", <projectred-transmission:wire:0>, [<ore:projredInsulatedWire>]);

recipes.removeByRecipeName("projectred-transmission:insulated/white_insulated_wire");
recipes.addShapedMirrored("dfh/white_insulated_red_alloy_wire_new", <projectred-transmission:wire:1> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolWhite>],
    [<ore:woolWhite>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/white_insulated_red_alloy_wire_converted", <projectred-transmission:wire:1> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolWhite>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_white_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:1> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolWhite>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/1_framed");
recipes.addShapedMirrored("dfh/framed_white_insulated_red_alloy_wire", <projectred-transmission:framed_wire:1>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:1>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/white_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:1>, [<projectred-transmission:framed_wire:1>]);

recipes.removeByRecipeName("projectred-transmission:insulated/orange_insulated_wire");
recipes.addShapedMirrored("dfh/orange_insulated_red_alloy_wire_new", <projectred-transmission:wire:2> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolOrange>],
    [<ore:woolOrange>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/orange_insulated_red_alloy_wire_converted", <projectred-transmission:wire:2> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolOrange>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_orange_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:2> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolOrange>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/2_framed");
recipes.addShapedMirrored("dfh/framed_orange_insulated_red_alloy_wire", <projectred-transmission:framed_wire:2>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:2>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/orange_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:2>, [<projectred-transmission:framed_wire:2>]);

recipes.removeByRecipeName("projectred-transmission:insulated/magenta_insulated_wire");
recipes.addShapedMirrored("dfh/magenta_insulated_red_alloy_wire_new", <projectred-transmission:wire:3> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolMagenta>],
    [<ore:woolMagenta>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/magenta_insulated_red_alloy_wire_converted", <projectred-transmission:wire:3> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolMagenta>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_magenta_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:3> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolMagenta>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/3_framed");
recipes.addShapedMirrored("dfh/framed_magenta_insulated_red_alloy_wire", <projectred-transmission:framed_wire:3>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:3>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/magenta_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:3>, [<projectred-transmission:framed_wire:3>]);

recipes.removeByRecipeName("projectred-transmission:insulated/lightblue_insulated_wire");
recipes.addShapedMirrored("dfh/lightblue_insulated_red_alloy_wire_new", <projectred-transmission:wire:4> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolLightBlue>],
    [<ore:woolLightBlue>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/lightblue_insulated_red_alloy_wire_converted", <projectred-transmission:wire:4> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolLightBlue>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_lightblue_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:4> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolLightBlue>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/4_framed");
recipes.addShapedMirrored("dfh/framed_lightblue_insulated_red_alloy_wire", <projectred-transmission:framed_wire:4>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:4>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/lightblue_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:4>, [<projectred-transmission:framed_wire:4>]);

recipes.removeByRecipeName("projectred-transmission:insulated/yellow_insulated_wire");
recipes.addShapedMirrored("dfh/yellow_insulated_red_alloy_wire_new", <projectred-transmission:wire:5> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolYellow>],
    [<ore:woolYellow>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/yellow_insulated_red_alloy_wire_converted", <projectred-transmission:wire:5> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolYellow>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_yellow_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:5> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolYellow>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/5_framed");
recipes.addShapedMirrored("dfh/framed_yellow_insulated_red_alloy_wire", <projectred-transmission:framed_wire:5>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:5>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/yellow_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:5>, [<projectred-transmission:framed_wire:5>]);

recipes.removeByRecipeName("projectred-transmission:insulated/lime_insulated_wire");
recipes.addShapedMirrored("dfh/lime_insulated_red_alloy_wire_new", <projectred-transmission:wire:6> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolLime>],
    [<ore:woolLime>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/lime_insulated_red_alloy_wire_converted", <projectred-transmission:wire:6> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolLime>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_lime_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:6> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolLime>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/6_framed");
recipes.addShapedMirrored("dfh/framed_lime_insulated_red_alloy_wire", <projectred-transmission:framed_wire:6>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:6>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/lime_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:6>, [<projectred-transmission:framed_wire:6>]);

recipes.removeByRecipeName("projectred-transmission:insulated/pink_insulated_wire");
recipes.addShapedMirrored("dfh/pink_insulated_red_alloy_wire_new", <projectred-transmission:wire:7> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolPink>],
    [<ore:woolPink>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/pink_insulated_red_alloy_wire_converted", <projectred-transmission:wire:7> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolPink>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_pink_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:7> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolPink>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/7_framed");
recipes.addShapedMirrored("dfh/framed_pink_insulated_red_alloy_wire", <projectred-transmission:framed_wire:7>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:7>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/pink_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:7>, [<projectred-transmission:framed_wire:7>]);

recipes.removeByRecipeName("projectred-transmission:insulated/gray_insulated_wire");
recipes.addShapedMirrored("dfh/gray_insulated_red_alloy_wire_new", <projectred-transmission:wire:8> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolGray>],
    [<ore:woolGray>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/gray_insulated_red_alloy_wire_converted", <projectred-transmission:wire:8> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolGray>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_gray_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:8> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolGray>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/8_framed");
recipes.addShapedMirrored("dfh/framed_gray_insulated_red_alloy_wire", <projectred-transmission:framed_wire:8>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:8>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/gray_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:8>, [<projectred-transmission:framed_wire:8>]);

recipes.removeByRecipeName("projectred-transmission:insulated/lightgrey_insulated_wire");
recipes.addShapedMirrored("dfh/lightgrey_insulated_red_alloy_wire_new", <projectred-transmission:wire:9> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolLightGrey>],
    [<ore:woolLightGrey>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/lightgrey_insulated_red_alloy_wire_converted", <projectred-transmission:wire:9> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolLightGrey>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_lightgrey_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:9> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolLightGrey>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/9_framed");
recipes.addShapedMirrored("dfh/framed_lightgrey_insulated_red_alloy_wire", <projectred-transmission:framed_wire:9>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:9>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/lightgrey_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:9>, [<projectred-transmission:framed_wire:9>]);

recipes.removeByRecipeName("projectred-transmission:insulated/cyan_insulated_wire");
recipes.addShapedMirrored("dfh/cyan_insulated_red_alloy_wire_new", <projectred-transmission:wire:10> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolCyan>],
    [<ore:woolCyan>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/cyan_insulated_red_alloy_wire_converted", <projectred-transmission:wire:10> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolCyan>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_cyan_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:10> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolCyan>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/10_framed");
recipes.addShapedMirrored("dfh/framed_cyan_insulated_red_alloy_wire", <projectred-transmission:framed_wire:10>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:10>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/cyan_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:10>, [<projectred-transmission:framed_wire:10>]);

recipes.removeByRecipeName("projectred-transmission:insulated/purple_insulated_wire");
recipes.addShapedMirrored("dfh/purple_insulated_red_alloy_wire_new", <projectred-transmission:wire:11> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolPurple>],
    [<ore:woolPurple>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/purple_insulated_red_alloy_wire_converted", <projectred-transmission:wire:11> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolPurple>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_purple_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:11> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolPurple>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/11_framed");
recipes.addShapedMirrored("dfh/framed_purple_insulated_red_alloy_wire", <projectred-transmission:framed_wire:11>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:11>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/purple_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:11>, [<projectred-transmission:framed_wire:11>]);

recipes.removeByRecipeName("projectred-transmission:insulated/blue_insulated_wire");
recipes.addShapedMirrored("dfh/blue_insulated_red_alloy_wire_new", <projectred-transmission:wire:12> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolBlue>],
    [<ore:woolBlue>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/blue_insulated_red_alloy_wire_converted", <projectred-transmission:wire:12> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolBlue>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_blue_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:12> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolBlue>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/12_framed");
recipes.addShapedMirrored("dfh/framed_blue_insulated_red_alloy_wire", <projectred-transmission:framed_wire:12>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:12>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/blue_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:12>, [<projectred-transmission:framed_wire:12>]);

recipes.removeByRecipeName("projectred-transmission:insulated/brown_insulated_wire");
recipes.addShapedMirrored("dfh/brown_insulated_red_alloy_wire_new", <projectred-transmission:wire:13> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolBrown>],
    [<ore:woolBrown>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/brown_insulated_red_alloy_wire_converted", <projectred-transmission:wire:13> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolBrown>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_brown_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:13> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolBrown>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/13_framed");
recipes.addShapedMirrored("dfh/framed_brown_insulated_red_alloy_wire", <projectred-transmission:framed_wire:13>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:13>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/brown_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:13>, [<projectred-transmission:framed_wire:13>]);

recipes.removeByRecipeName("projectred-transmission:insulated/green_insulated_wire");
recipes.addShapedMirrored("dfh/green_insulated_red_alloy_wire_new", <projectred-transmission:wire:14> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolGreen>],
    [<ore:woolGreen>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/green_insulated_red_alloy_wire_converted", <projectred-transmission:wire:14> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolGreen>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_green_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:14> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolGreen>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/14_framed");
recipes.addShapedMirrored("dfh/framed_green_insulated_red_alloy_wire", <projectred-transmission:framed_wire:14>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:14>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/green_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:14>, [<projectred-transmission:framed_wire:14>]);

recipes.removeByRecipeName("projectred-transmission:insulated/red_insulated_wire");
recipes.addShapedMirrored("dfh/red_insulated_red_alloy_wire_new", <projectred-transmission:wire:155> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolRed>],
    [<ore:woolRed>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/red_insulated_red_alloy_wire_converted", <projectred-transmission:wire:15> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolRed>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_red_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:15> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolRed>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/15_framed");
recipes.addShapedMirrored("dfh/framed_red_insulated_red_alloy_wire", <projectred-transmission:framed_wire:15>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:15>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/red_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:15>, [<projectred-transmission:framed_wire:15>]);

recipes.removeByRecipeName("projectred-transmission:insulated/black_insulated_wire");
recipes.addShapedMirrored("dfh/black_insulated_red_alloy_wire_new", <projectred-transmission:wire:16> * 64, [
    [null, <ore:ingotRedAlloy>, <ore:woolBlack>],
    [<ore:woolBlack>, <ore:ingotRedAlloy>, null]
]);
recipes.addShapedMirrored("dfh/black_insulated_red_alloy_wire_converted", <projectred-transmission:wire:16> * 8, [
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <ore:woolBlack>, <projectred-transmission:wire:0>],
    [<projectred-transmission:wire:0>, <projectred-transmission:wire:0>, <projectred-transmission:wire:0>]
]);
recipes.addShapedMirrored("dfh/framed_black_insulated_red_alloy_wire_converted", <projectred-transmission:framed_wire:16> * 8, [
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <ore:woolBlack>, <projectred-transmission:framed_wire:0>],
    [<projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>, <projectred-transmission:framed_wire:0>]
]);
recipes.removeByRecipeName("projectred-transmission:framed/16_framed");
recipes.addShapedMirrored("dfh/framed_black_insulated_red_alloy_wire", <projectred-transmission:framed_wire:16>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:16>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/black_insulated_red_alloy_wire_unframed", <projectred-transmission:wire:16>, [<projectred-transmission:framed_wire:16>]);

// Other cables...
recipes.removeByRecipeName("projectred-transmission:framed/17_framed");
recipes.addShapedMirrored("dfh/framed_bundled_wire", <projectred-transmission:framed_wire:17>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <ore:projredBundledCable>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/bundled_wire_unframed", <projectred-transmission:wire:17>, [<projectred-transmission:framed_wire:17>]);
recipes.addShapeless("dfh/bundled_wire_uncoloured", <projectred-transmission:wire:17>, [<ore:projredBundledCable>]);
recipes.removeByRecipeName("projectred-transmission:framed/34_framed");
recipes.addShapedMirrored("dfh/framed_low_load_power_line", <projectred-transmission:framed_wire:34>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <projectred-transmission:wire:34>, null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);
recipes.addShapeless("dfh/low_load_power_line_unframed", <projectred-transmission:wire:34>, [<projectred-transmission:framed_wire:34>]);
