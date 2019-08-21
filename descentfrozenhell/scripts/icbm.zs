recipes.removeByRecipeName("icbmclassic:explosives/nuclear");
recipes.removeByRecipeName("icbmclassic:explosives/antimatter");
recipes.removeByRecipeName("icbmclassic:explosives/redmatter");

var uranium = <ore:pelletUranium235>;
var enrichedUranium = <atomicscience:uranium_235>.withTag({display:{Name: "Enriched Uranium 235", Lore:["Weapons Grade"]}});

var antimatter = <atomicscience:powered_cell>.withTag({Fluid: {FluidName: "atomicscience:antimatter", Amount: 100}});
var strangematter = <atomicscience:powered_cell>.withTag({Fluid: {FluidName: "atomicscience:strange_matter", Amount: 100}});

# enriched uranium recipe
recipes.addShapeless(enrichedUranium, [<ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>, <ore:pelletUranium235>]);

# nuclear (force u235)
recipes.addShaped(<icbmclassic:explosives:15>, [
    [<icbmclassic:explosives:13>, enrichedUranium, <icbmclassic:explosives:13>],
    [enrichedUranium, enrichedUranium, enrichedUranium],
    [<icbmclassic:explosives:13>, enrichedUranium, <icbmclassic:explosives:13>]
]);

# antimatter
recipes.addShaped(<icbmclassic:explosives:22>, [
    [<icbmclassic:explosives:21>, <icbmclassic:explosives:15>, <icbmclassic:explosives:21>],
    [antimatter, antimatter, antimatter],
    [<ore:blockElectrumFlux>, <icbmclassic:explosives:15>, <ore:blockElectrumFlux>]
]);

# redmatter
recipes.addShaped(<icbmclassic:explosives:23>, [
    [<icbmclassic:explosives:20>, <icbmclassic:explosives:22>, <icbmclassic:explosives:20>],
    [strangematter, strangematter, strangematter],
    [<ore:blockCrystalFlux>, <icbmclassic:explosives:22>, <ore:blockCrystalFlux>]
]);

var module = <icbmclassic:missile:24>;
var conventional = <icbmclassic:missile:0>;
var nuclear = <icbmclassic:missile:15>;

# cluster missile
recipes.addShaped(<icbmclassic:missile:27>, [
    [conventional, conventional, conventional],
    [conventional, module, conventional],
    [conventional, conventional, conventional]
]);

# nuclear cluster missile
recipes.addShaped(<icbmclassic:missile:28>, [
    [nuclear, null, nuclear],
    [null, module, null],
    [nuclear, null, nuclear]
]);