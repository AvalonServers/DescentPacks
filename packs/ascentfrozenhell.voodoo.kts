
import com.skcraft.launcher.model.modpack.Recommendation
import voodoo.data.Side
import voodoo.data.curse.FileType

mcVersion = "1.12.2"
title = "Ascent: Frozen Hell"
authors = listOf("CitadelCore", "Skye", "ThePiGuy24", "NickStalburg", "Raeffi")
version = "0.0.3"

modloader {
  forge(Forge_12_2.mc1_12_2_latest)
}
//icon = rootFolder.resolve("icon.png")

//userFiles = UserFiles(
//    include = listOf(""),
//    exclude = listOf("")
//)


pack {
  multimc {
    selfupdateUrl = "https://cdn.avalon.arctarus.co.uk/ascent/frozenhell/ascentfrozenhell-latest.json"
  }
}

root<Curse> {
  useUrlTxt = false
  releaseTypes = setOf(FileType.Release, FileType.Beta, FileType.Alpha)
  validMcVersions = setOf("1.12.2", "1.12")
  it.list {
    // The way these mods are parsed, the Curse URL is taken,
    // hyphens are removed and made camel case.
    // or just look into the generated constants in `.voodoo/Mod.kt`

    +Mod.boosterRockets
    +Mod.effortlessBuilding
    +Mod.onlinepictureframe
    +Mod.advancedChimneys

    // TRAINS!
    +Mod.immersiveRailroading
    //+Mod.railstuff
    // Train Resource Packs

    group {
      folder = "config/immersiverailroading"
    }.list {
      //+ResourcePack.prototypeTflPackForImmersiveRailroading
      +ResourcePack.dragonsModernBritish
      +ResourcePack.smallGaugeGoodiesForImmersiveRailroading
      +ResourcePack.matoiVanillaPackIr
      +ResourcePack.voxelTrainsIr
      withTypeClass(Direct::class).list {
        +"INFRATrainPack" {
          useUrlTxt = false
          url = "https://thepiguy24.github.io/INFRATrainPack_0005.zip"
          fileName = "INFRATrainPack.zip"
        }
        +"Raefftech_Railway_Equipment" {
          url = "https://www.dropbox.com/s/84zxpbzf32u0f2y/Raefftech_Railway_Equipment.zip?dl=1"
          fileName = "Raefftech_Railway_Equipment.zip"
        }
        +"fixed_tfl_trains" {
          url = "https://skyem.co.uk/files/TFL_Pack_tom23_v100_fixed_4.zip"
          fileName = "fixed_tfl_trains.zip"
        }
      }
    }

    // Following mods are for world generation
    +Mod.biomesOPlenty
    +Mod.realisticOreVeins
    +Mod.realisticTerrainGeneration
    +Mod.climateControlGeographicraft
    
    // To replace chisel and bits...
    +Mod.littletiles
    
    // This seems to help with TPS problems...
    +Mod.dynamicView

    // StimmedCow
    +Mod.stimmedcowNomorerecipeconflict

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
    //+Mod.immersiveTech
    // (replacement IT)
    +Mod.mctImmersiveTechnology

    +Mod.immersiveIntelligence

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
    +Mod.thermalExpansion

    // azanor
    +Mod.thaumcraft
    +Mod.thaumicTinkerer
    +Mod.thaumicComputers
    +Mod.thaumicEnergistics
    +Mod.thaumicAugmentation
    +Mod.baubles
    // mangoose3039 
    +Mod.thaumicPeriphery
    +Mod.engineeredGolems
    +Mod.expandedArcanum
    
    +Mod.thaumicAdditions

    // asie
    // Charset Modules
    +Mod.charsetLib
    +Mod.charsetTweaks
    +Mod.charsetImmersion
    +Mod.charsetTablet
    +Mod.charsetTools
    +Mod.charsetBlockCarrying
    +Mod.charsetpatches
    +Mod.charsetStorageLocks

    // Other
    +Mod.foamfixOptimizationMod
    +Mod.openprinter
    +Mod.ocdevices
    +Mod.zettaIndustries
    +Mod.theOneProbe
    +Mod.topAddons
    +Mod.spawnerImbuer
    +Mod.teslaCoreLib
    +Mod.industrialForegoing
    +Mod.integrationForegoing
    +Mod.colytra
    +Mod.moreplates
    +Mod.journeymap
    +Mod.gravestoneMod
    //+Mod.xaerosMinimap
    //+Mod.xaerosWorldMap

    +Mod.redstoneArsenal
    +Mod.icbmClassic // we arent yeeting because it is fun
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
      //fileID = FileID(2653854)
    }

    // Wireless crafting terminal
    +Mod.wirelessCraftingTerminal

    // SanAndreasP
    +Mod.immersiveCables
    +Mod.alternatingFlux

    // better builder's wands
    +Mod.betterBuildersWands

    +Mod.inventoryTweaks
    +Mod.opensecurity
    +Mod.architecturecraftTridev
    
    +Mod.engineersDecor
    +Mod.engineersTools
    +Mod.engineersDoors
    +Mod.immersiveFloofs
    +Mod.immersiveposts
    +Mod.tails
    +Mod.justEnoughPetroleum
    +Mod.redstoneGaugesAndSwitches
    +Mod.thaumcraftInventoryScanning

    +Mod.modularForcefieldSystem
    +Mod.nuclearcraftMod

    // Ender IO stuff
    // latest versions break for some reason, temp fix:
    +Mod.enderIo {
      fileID = FileID(3059061)
    }
    +Mod.enderIoEndergy {
      fileID = FileID(3059060)
    }

    +Mod.decocraft

    +Mod.trafficControl
    +Mod.techguns
    +Mod.worldedit
    +Mod.schematica
    //+Mod.pollutionOfTheRealms
    //+Mod.pollutantPump


    // Weather
	+Mod.weatherStormsTornadoes
	
	// Recurrent Complex Utility
	+Mod.recurrentComplex
	
    // Computronics MaryTTS Stuff
    group {
      folder = "marytts"
    }.list {
      withTypeClass(Direct::class).list {
        useUrlTxt = false
        +"computronics_maryTTS" {
          url = "http://files.vexatos.com/Computronics/marytts/marytts-runtime-5.2-jar-for-computronics.jar"
        }
        +"computronics_maryTTS_english_language" {
          url = "https://files.vexatos.com/Computronics/marytts/marytts-lang-en-5.2.jar"
        }
      }
      withTypeClass(Local::class).list {
        +"compuronics_maryTTS_english_voice" {
          fileSrc = "voice-dfki-prudence-hsmm-5.2.jar"
        }
      }
    }

    // Direct download (URL)
    withTypeClass(Direct::class).list {
      +"computronics" {
        useUrlTxt = false
        url = "http://files.vexatos.com/Computronics/Computronics-1.12.2-1.6.6.jar"
      }
      //+"ascension" url "https://launcher.towerdevs.xyz/external/ascension-0.1.0.jar"
      //+"opensolidstate" url "https://launcher.towerdevs.xyz/external/opensolidstate-1.0.jar"
    }

    withTypeClass(Jenkins::class) {
      jenkinsUrl ="https://ci.cil.li/"
    }.list {
      +"opencomputers" {
        job = "OpenComputers-MC1.12"
        fileNameRegex = "OpenComputers-([^-]*)-([^-]*)\\.jar"
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
        +Mod.nofov {
          description = "Disables changes to the field of view by effects, including stuff like sprinting and potions."
        }
      }
    }

    // Server side
    group {
      side = Side.SERVER
    }.list {
    }
  }
}
