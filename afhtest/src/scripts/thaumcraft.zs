import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;

# primordial and crimson portal
Infusion.registerRecipe("dfhPrimordial", "", <thaumcraft:primordial_pearl>, 20, [<aspect:aer>*100, <aspect:terra>*100, <aspect:ignis>*100, <aspect:aqua>*100, <aspect:ordo>*100, <aspect:perditio>*100], <ore:netherStar>, [
    <thaumcraft:causality_collapser>,
    <thaumcraft:causality_collapser>,
    <ore:blockMithril>,
    <ore:blockMithril>,
    <ore:blockMithril>,
    <ore:blockMithril>,
    <ore:dustMana>,
    <ore:dustMana>
]);

Infusion.registerRecipe("dfhCrimsonPortal", "", <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportalgreater"}, display:{Name:"Portal Catalyst", Lore:["Dimensionally unstable"]}}), 10, [<aspect:vitium>*250, <aspect:alienis>*250, <aspect:tenebrae>*250], <thaumcraft:causality_collapser>, [
    <thaumcraft:void_seed>,
    <thaumcraft:void_seed>,
    <thaumcraft:alumentum>,
    <thaumcraft:alumentum>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:morphic_resonator>
]);

# mana infused stuff
Crucible.registerRecipe("dfhManaInfusedIngot", "", <thermalfoundation:material:136>, <ore:ingotThaumium>, [<aspect:praecantatio>*20, <aspect:instrumentum>*20]);
recipes.addShapeless(<thermalfoundation:material:1028>, [<ore:dustBlizz>, <ore:dustBlizz>, <ore:dustRedstone>, <ore:dustMithril>]);

// Ancient Stone
recipes.addShaped(<thaumcraft:stone_ancient> * 8, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <thaumcraft:crystal_essence>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
// Eldritch stone
recipes.addShaped(<thaumcraft:stone_eldritch_tile> * 8, [[<ore:stoneVoid>, <ore:stoneVoid>, <ore:stoneVoid>], [<ore:stoneVoid>, <thaumcraft:crystal_essence>, <ore:stoneVoid>], [<ore:stoneVoid>, <ore:stoneVoid>, <ore:stoneVoid>]]);

// Curiosities
recipes.remove(<thaumcraft:curio:0>);
ArcaneWorkbench.registerShapedRecipe("dfhCurioArcane0", "", 0, [<aspect:ordo> * 8], <thaumcraft:curio:0>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <thaumcraft:stone_arcane>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);
ArcaneWorkbench.registerShapedRecipe("dfhCurioArcane1", "", 0, [<aspect:ordo> * 8], <thaumcraft:curio:0>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <chisel:arcane_stone:*>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);
ArcaneWorkbench.registerShapedRecipe("dfhCurioArcane2", "", 0, [<aspect:ordo> * 8], <thaumcraft:curio:0>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <chisel:arcane_stone1:*>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);
ArcaneWorkbench.registerShapedRecipe("dfhCurioArcane3", "", 0, [<aspect:ordo> * 8], <thaumcraft:curio:0>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <chisel:arcane_stone2:*>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);

recipes.remove(<thaumcraft:curio:2>);
ArcaneWorkbench.registerShapedRecipe("dfhCurioAncient", "", 0, [<aspect:mortuus> * 8], <thaumcraft:curio:2>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:bone>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);

recipes.remove(<thaumcraft:curio:3>);
ArcaneWorkbench.registerShapedRecipe("dfhCurioEldritch", "", 0, [<aspect:alienis> * 8], <thaumcraft:curio:3>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <thaumcraft:stone_eldritch_tile>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);

recipes.remove(<thaumcraft:curio:4>);
ArcaneWorkbench.registerShapedRecipe("dfhCurioIlluminating0", "", 0, [<aspect:lux> * 8], <thaumcraft:curio:4>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:dustGlowstone>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);
ArcaneWorkbench.registerShapedRecipe("dfhCurioIlluminating1", "", 0, [<aspect:lux> * 8], <thaumcraft:curio:4>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:torch>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);

recipes.remove(<thaumcraft:curio:5>);
ArcaneWorkbench.registerShapedRecipe("dfhCurioEldritch", "", 0, [<aspect:perditio> * 8], <thaumcraft:curio:5>, [
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:cropNetherWart>, <ore:gemAmber>],
    [<ore:gemAmber>, <ore:gemAmber>, <ore:gemAmber>],
]);
