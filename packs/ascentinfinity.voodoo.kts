import com.skcraft.launcher.model.modpack.Recommendation
import voodoo.data.Side
import voodoo.data.UserFiles
import voodoo.data.curse.FileType
import voodoo.provider.CurseProvider
import voodoo.provider.DirectProvider

mcVersion = "1.12.2"
title = "Ascent Infinity"
authors = listOf("CitadelCore")
version = "1.0.6.0"

forge = Forge.recommended
icon = rootDir.resolve("icon.png")

sourceDir = "src"
userFiles = UserFiles(
include = listOf(""),
exclude = listOf("")
)

root(CurseProvider) {
    releaseTypes = setOf(FileType.RELEASE, FileType.BETA, FileType.ALPHA)
    validMcVersions = setOf("1.12.2", "1.12")
    metaUrl = "https://curse.nikky.moe/api"
    list {
        // The way these mods are parsed, the Curse URL is taken,
        // hyphens are removed and made camel case.
        // or just look into the generated constants in `.voodoo/Mod.kt`

        // Mr_TJP
        +Mod.mrtjpcore
        +Mod.projectRedBase
        +Mod.projectRedCompat
        +Mod.projectRedFabrication
        +Mod.projectRedIntegration
        +Mod.projectRedLighting

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
        +Mod.foamfixForMinecraft
        +Mod.opencomputers
        +Mod.zettaIndustries
        +Mod.hwyla
        +Mod.colytra
        +Mod.hardcoreDarkness
        +Mod.theBeneath
        +Mod.moreplates
        +Mod.gravestoneMod

        // jaquadro
        +Mod.chameleon
        +Mod.storageDrawers

        // better builder's wands
        +Mod.betterBuildersWands

        // Direct download (URL)
        withProvider(DirectProvider).list {
            +"computronics" url "http://files.vexatos.com/Computronics/Computronics-1.12.1-1.6.5.jar"
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
            feature {
                selected = false
            }
        }.list {
            +Mod.laggoggles configure {
                description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
            }

            +Mod.sampler configure {
                description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
            }

            +Mod.openeye configure {
                description = "Automatically collects and submits crash reports. Enable if asked or wish to help sort issues with the pack."
            }
        }

        // Client
        group {
            side = Side.CLIENT
        }.list {
            +Mod.justEnoughResourcesJer
            +Mod.inventoryTweaks
            +Mod.betterAdvancements

            // Direct download (URL)
            withProvider(DirectProvider).list {
                +"jecalculation" url "https://launcher.towerdevs.xyz/store/jecalculation-1.12.2-3.0.0.jar"
            }

            group {
                feature {
                    selected = true
                    recommendation = Recommendation.starred
                }
            }.list {
                +Mod.dynamicSurroundings configure {
                    description = "Caution: Resource heavy. Quite nice, has a lot of configurable features that add immersive sound/visual effects. Includes light-level overlay. (Defaults set to remove some sounds and generally be better.)"
                }
                +Mod.dynamicLights configure {
                    description = "Caution: Resource heavy. Turn this off if your computer isn't powerful enough."
                }
            }

            group {
                feature {
                    selected = false
                }
            }.list {
                +Mod.betterFoliage configure {
                    description = "Caution: Resource heavy. Disabled by default because there are a few render bugs."
                }
                +Mod.fancyBlockParticles configure {
                    description = "Caution: Resource heavy. Adds some flair to particle effects and animations. Highly configurable, costs fps. (Defaults set to be less intrusive.)"
                }
                +Mod.fasterLadderClimbing configure {
                    description = "Helps you control ladder climb speed and allows you to go a bit faster."
                }
                +Mod.nbtedit configure {
                    description = "Can be used to view NBT trees. Developer use only."
                }
            }
        }
    }
}