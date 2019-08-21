import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;

# primordial and crimson portal
Infusion.registerRecipe("dfhPrimordial", "", <thaumcraft:primordial_pearl>, 20, [<aspect:aer>*100, <aspect:terra>*100, <aspect:ignis>*100, <aspect:aqua>*100, <aspect:ordo>*100, <aspect:perditio>*100], <ore:netherStar>, [
    <ore:dustMana>,
    <ore:dustMana>,
    <thaumcraft:causality_collapser>,
    <thaumcraft:causality_collapser>,
    <thaumcraft:void_seed>,
    <thaumcraft:void_seed>,
    <thaumcraft:void_seed>,
    <thaumcraft:void_seed>
]);

Infusion.registerRecipe("dfhCrimsonPortal", "", <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportalgreater"}, display:{Name:"Portal Catalyst", Lore:["Dimensionally unstable"]}}), 10, [<aspect:vitium>*250, <aspect:alienis>*250, <aspect:tenebrae>*250], <thaumcraft:causality_collapser>, [
    <thaumcraft:void_seed>,
    <thaumcraft:alumentum>,
    <thaumcraft:alumentum>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:mechanism_complex>,
    <thaumcraft:mechanism_complex>
]);

# mana infused stuff
Crucible.registerRecipe("dfhManaInfusedIngot", "", <thermalfoundation:material:136>, <ore:ingotThaumium>, [<aspect:praecantatio>*20, <aspect:instrumentum>*20]);
recipes.addShapeless(<thermalfoundation:material:1028>, [<ore:dustBlizz>, <ore:dustBlizz>, <ore:dustRedstone>, <ore:dustMithril>]);