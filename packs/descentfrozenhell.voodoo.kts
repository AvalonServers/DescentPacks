
import com.skcraft.launcher.model.modpack.Recommendation
import voodoo.data.Side
import voodoo.data.curse.FileType
import voodoo.provider.CurseProvider
import voodoo.provider.DirectProvider
import voodoo.data.curse.ProjectID
import voodoo.data.curse.FileID

mcVersion = "1.12.2"
title = "Descent Frozen Hell"
authors = listOf("CitadelCore", "Skye", "ThePiGuy24")
version = "1.6.1.3"

modloader {
    forge(Forge_12_2.mc1_12_2_latest)
}
icon = rootDir.resolve("icon.png")

//userFiles = UserFiles(
//    include = listOf(""),
//    exclude = listOf("")
//)


pack {
    multimc {
        skPackUrl = "https://launcher.towerdevs.xyz/packs/descent/frozenhell/descentfrozenhell.json"
    }
}

root<Curse> {
    releaseTypes = setOf(FileType.Release, FileType.Beta, FileType.Alpha)
    validMcVersions = setOf("1.12.2", "1.12")
    it.list {
        // The way these mods are parsed, the Curse URL is taken,
        // hyphens are removed and made camel case.
        // or just look into the generated constants in `.voodoo/Mod.kt`

        // BrisingrAerowing - OpenComputers Book Converter
        +Mod.opencomputersBookConverter // ProjectID(326890)

        // RWTema
        +Mod.extraUtilities

        // InsomniaKitten
        +Mod.wearableBackpacks

        // shadowfactsmc
        +Mod.shadowfactsForgelin

        // BluSunrize
        +Mod.immersiveEngineering
        // Flaxbeard
        +Mod.immersivePetroleum
        // FerroO2000
        +Mod.immersiveTech

        // Mr_TJP
        +Mod.mrtjpcore
        +Mod.projectRedBase
        +Mod.projectRedCompat
        +Mod.projectRedFabrication
        +Mod.projectRedIntegration
        +Mod.projectRedLighting
        +Mod.projectRedWorld

        // chicken_bones
        +Mod.codechickenLib18
        +Mod.forgeMultipartCbe

        // Vazkii
        +Mod.autoreglib

        // chiselTeam
        +Mod.chisel
        // AlgorithmX2
        +Mod.chiselsBits

        // jaredlll08
        +Mod.mtlib
        +Mod.crafttweaker
        +Mod.modtweaker

        // mezz
        +Mod.jei

        // Team CoFH
        +Mod.cofhCore
        +Mod.cofhWorld
        +Mod.redstoneFlux
        +Mod.thermalDynamics
        +Mod.thermalExpansion

        // azanor
        +Mod.thaumcraft
        +Mod.thaumicComputers
        +Mod.thaumicEnergistics
        +Mod.thaumicAugmentation
        +Mod.baubles

        // asie
        // Charset Modules
        +Mod.charsetLib
        +Mod.charsetTweaks
        +Mod.charsetImmersion
        +Mod.charsetAudio
        +Mod.charsetTablet
        +Mod.charsetTools
        +Mod.charsetBlockCarrying
        +Mod.charsetpatches
        +Mod.charsetStorageLocks

        // Other
        +Mod.foamfixOptimizationMod
        +Mod.opencomputers
        +Mod.openprinter
        +Mod.ocdevices
        +Mod.zettaIndustries
        +Mod.theOneProbe
        +Mod.railcraft
        +Mod.spawnerImbuer
        +Mod.teslaCoreLib
        +Mod.industrialForegoing
        +Mod.integrationForegoing
        +Mod.colytra
        +Mod.moreplates
        +Mod.journeymap
        +Mod.gravestoneMod

        +Mod.redstoneArsenal
        +Mod.icbmClassic
        +Mod.avaritia110
        +Mod.avaritiaComplement
        +Mod.moreAvaritia

        // TeamDmfMM
        +Mod.catwalks4

        // ondrejduchon
        +Mod.treeChopper

        // malte0811
        +Mod.industrialWires

        // PC-Logix
        +Mod.openfm

        // jaquadro
        +Mod.chameleon
        +Mod.storageDrawers

        // AlgorithmX2
        +Mod.appliedEnergistics2
        +Mod.extracells2 {
            // pin 2.6.2 since latest is broken
            fileID = FileID(2653854)
        }

        // SanAndreasP
        +Mod.immersiveCables
        +Mod.alternatingFlux

        // better builder's wands
        +Mod.betterBuildersWands
      
        +Mod.inventoryTweaks
        +Mod.opensecurity
        +Mod.architecturecraftTridev

        +Mod.buildcraft
        +Mod.engineersDecor
        +Mod.engineersTools
        +Mod.engineersDoors
        +Mod.immersiveFloofs
        +Mod.immersiveEnergy
        +Mod.immersiveposts
        +Mod.tails // brötherfursed
        +Mod.justEnoughPetroleum
        +Mod.redstoneGaugesAndSwitches
        +Mod.thaumcraftInventoryScanning

        +Mod.modularForcefieldSystem
        +Mod.nuclearcraftMod
        +Mod.enderIo
        +Mod.sync
        +Mod.ftbUtilities
        
        // Vöidmöbile maschines
        +Mod.minecraftTransportSimulator // Immersive Vehicles
        +Mod.transportSimulatorOfficialVehicleSet
        +Mod.unuPartsPack // required for all UNU mods
        +Mod.unuCivilianPackForMts//ProjectID(292897) // unu Civillian vehicles
        //+ProjectID(327245) // unu Millitary vehicles, Removed due to client crash when creating vehicles with tank tracks
        +Mod.trinPartPack // required for all Trin mods
        +Mod.immersiveVehiclesTrinCivilPackV2Extended // ProjectID(305830) // Immersive Vehicles Trin Civil Pack V2 (Extended version)
        +Mod.mtsSeagullsMilitaryCarPack
        +Mod.moonspireMetropolitanMotorsPackForMts // :b:us
        
        // Direct download (URL)
        withTypeClass(Direct::class).list {
            +"computronics" {
                useUrlTxt = false
                url = "http://files.vexatos.com/Computronics/Computronics-1.12.2-1.6.6.jar"
            }
            // +"thaumictinkerer" {
            //     url = "https://launcher.towerdevs.xyz/external/thaumictinkerer-1.12.2-5.0-41d79cc.jar"
            // }
            //+"ascension" url "https://launcher.towerdevs.xyz/external/ascension-1.0.jar"
            //+"opensolidstate" url "https://launcher.towerdevs.xyz/external/opensolidstate-1.0.jar"
        }

        withTypeClass(Local::class).list {
            +"thaumictinkerer" {
                fileSrc = "thaumictinkerer-1.12.2-5.0-41d79cc.jar"
            }
        }

        // Server-side mods
        group {
            side = Side.SERVER
        }.list {
            +Mod.swingthroughgrass
        }

        // Specific-side mods

        // Both (optional)
        group {
            side = Side.BOTH
            optional {
                selected = false
            }
        }.list {
            +Mod.laggoggles {
                description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
            }

            +Mod.sampler {
                description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
            }

            +Mod.openeye {
                description = "Automatically collects and submits crash reports. Enable if asked or wish to help sort issues with the pack."
            }
        }

        // Client
        group {
            side = Side.CLIENT
        }.list {
            +Mod.thaumicJei
            +Mod.justEnoughResourcesJer
            +Mod.betterAdvancements

            group {
                optional {
                    selected = true
                    skRecommendation = Recommendation.starred
                }
            }.list {
                +Mod.fasterLadderClimbing {
                    description = "Helps you control ladder climb speed and allows you to go a bit faster."
                }
            }

            group {
                optional {
                    selected = false
                }
            }.list {
                +Mod.dynamicSurroundings {
                    description = "Caution: Resource heavy. Quite nice, has a lot of configurable features that add immersive sound/visual effects. Includes light-level overlay. (Defaults set to remove some sounds and generally be better.)"
                }
                +Mod.dynamicLights {
                    description = "Caution: Resource heavy. Turn this off if your computer isn't powerful enough."
                }
                +Mod.betterFoliage {
                    description = "Caution: Resource heavy. Disabled by default because there are a few render bugs."
                }
                +Mod.fancyBlockParticles {
                    description = "Caution: Resource heavy. Adds some flair to particle effects and animations. Highly configurable, costs fps. (Defaults set to be less intrusive.)"
                }
                +Mod.nbtedit {
                    description = "Can be used to view NBT trees. Developer use only."
                }
            }
        }

        // Server side
        group {
            side = Side.SERVER
        }.list {
            +Mod.matterlink
        }
    }
}