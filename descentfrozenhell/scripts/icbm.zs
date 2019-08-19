recipes.removeByRecipeName("icbmclassic:explosives/antimatter");
recipes.removeByRecipeName("icbmclassic:explosives/redmatter");

var antimatter = <atomicscience:powered_cell>.withTag({Fluid: {FluidName: "atomicscience:antimatter", Amount: 100}});
var strangematter = <atomicscience:powered_cell>.withTag({Fluid: {FluidName: "atomicscience:strange_matter", Amount: 100}});

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