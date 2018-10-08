@file:DependsOn("moe.nikky.voodoo:dsl:0.4.0-SNAPSHOT")
@file:MavenRepository("kotlinx", "https://kotlin.bintray.com/kotlinx")
@file:MavenRepository("elytradev", "https://repo.elytradev.com")
@file:KotlinOpts("-J-Xmx4G")
@file:KotlinOpts("-J-server")
@file:Include("../.voodoo/Mod.kt")
@file:Include("../.voodoo/TexturePack.kt")
@file:Include("../.voodoo/Forge.kt")
@file:Include("../.voodoo/Constants.kt")

//COMPILER_OPTS -jvm-target 1.8 -J-Xmx5g

import com.skcraft.launcher.model.modpack.Recommendation
import voodoo.data.Side
import voodoo.data.UserFiles
import voodoo.data.curse.FileType
import voodoo.data.nested.NestedPack
import voodoo.provider.CurseProvider
import voodoo.provider.DirectProvider
import voodoo.withDefaultMain

fun main(args: Array<String>) = withDefaultMain(
    arguments = args,
    root = Constants.rootDir.resolve("descentfrozenhell")
) {
    NestedPack(
        id = "descentfrozenhell",
        title = "Descent Frozen Hell",
        authors = listOf("CitadelCore"),
        version = "1.0.4.0",
        mcVersion = "1.12.2",
        forge = Forge.mc1_12_2.build2765,
        icon = root.resolve("icon.png"),

        sourceDir = "src",
        userFiles = UserFiles(
            include = listOf(""),
            exclude = listOf("")
        ),

        root = rootEntry(CurseProvider) {
            releaseTypes = setOf(FileType.RELEASE, FileType.BETA, FileType.ALPHA)
            validMcVersions = setOf("1.12.2", "1.12")
            metaUrl = "https://curse.nikky.moe/api"
            optionals = false
            list {
                // The way these mods are parsed, the Curse URL is taken,
                // hyphens are removed and made camel case.
                // or just look into the generated constants in `.voodoo/Mod.kt`

                // InsomniaKitten
                id(Mod.wearableBackpacks)

                // Glitchfiend
                id(Mod.toughAsNails)

                // Beeto
                id(Mod.betterWithMods)
                // primetoxins
                id(Mod.betterWithEngineering)

                // shadowfactsmc
                id(Mod.shadowfactsForgelin)

                // BluSunrize
                id(Mod.immersiveEngineering)
                // Flaxbeard
                id(Mod.immersivePetroleum)
                // FerroO2000
                id(Mod.immersiveTech)

                // Mr_TJP
                id(Mod.mrtjpcore)
                id(Mod.projectRedBase)
                id(Mod.projectRedCompat)
                id(Mod.projectRedFabrication)
                id(Mod.projectRedIntegration)
                id(Mod.projectRedLighting)

                // chicken_bones
                id(Mod.codechickenLib18)
                id(Mod.forgeMultipartCbe)

                // Vazkii
                id(Mod.autoreglib)

                // chiselTeam
                id(Mod.chisel)
                // AlgorithmX2
                id(Mod.chiselsBits)

                // jaredlll08
                id(Mod.mtlib)
                id(Mod.crafttweaker)
                id(Mod.modtweaker)

                // mezz
                id(Mod.jei)

                // Team CoFH
                id(Mod.cofhcore)
                id(Mod.cofhWorld)
                id(Mod.redstoneFlux)
                id(Mod.thermalDynamics)
                id(Mod.thermalexpansion)

                // azanor
                id(Mod.thaumcraft)
                id(Mod.thaumicComputers)
                id(Mod.baubles)

                // p455w0rd
                id(Mod.p455w0rdsLibrary)
                id(Mod.toughExpansion)

                // asie
                // Charset Modules
                id(Mod.charsetLib)
                id(Mod.charsetTweaks)
                id(Mod.charsetImmersion)
                id(Mod.charsetAudio)
                id(Mod.charsetTablet)
                id(Mod.charsetTools)
                id(Mod.charsetBlockCarrying)
                id(Mod.charsetpatches)
                id(Mod.charsetStorageLocks)

                // Other
                id(Mod.foamfixForMinecraft)
                id(Mod.opencomputers)
                id(Mod.zettaIndustries)

                // TeamDmfMM
                id(Mod.catwalks4)

                // ondrejduchon
                id(Mod.treeChopper)

                // malte0811
                id(Mod.industrialWires)

                // PC-Logix
                id(Mod.openfm)

                // Direct download (URL)
                withProvider(DirectProvider).list {
                    id("computronics") url "http://files.vexatos.com/Computronics/Computronics-1.12.1-1.6.5.jar"
                    id("railcraft") url "https://launcher.towerdevs.xyz/store/Railcraft_1.12.2-10.4.0-beta-2-unofficial.jar"
                }

                // Server-side mods
                group {
                    side = Side.SERVER
                }.list {
                    id("btfu-continuous-rsync-incremental-backup")
                    id("swingthroughgrass")
                }

                // Specific-side mods

                // Both (optional)
                group {
                    side = Side.BOTH
                    feature {
                        selected = false
                    }
                }.list {
                    id(Mod.laggoggles) {
                        description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    id(Mod.sampler) {
                        description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    id(Mod.openeye) {
                        description = "Automatically collects and submits crash reports. Enable if asked or wish to help sort issues with the pack."
                    }
                }

                // Client
                group {
                    side = Side.CLIENT
                }.list {
                    id(Mod.journeymap)
                    id(Mod.thaumicJei)
                    id(Mod.justEnoughResourcesJer)
                    id(Mod.inventoryTweaks)
                    id(Mod.betterAdvancements)

                    group {
                        feature {
                            selected = true
                            recommendation = Recommendation.starred
                        }
                    }.list {
                        id(Mod.dynamicSurroundings) {
                            description = "Caution: Resource heavy. Quite nice, has a lot of configurable features that add immersive sound/visual effects. Includes light-level overlay. (Defaults set to remove some sounds and generally be better.)"
                        }
                        id(Mod.dynamicLights) {
                            description = "Caution: Resource heavy. Turn this off if your computer isn't powerful enough."
                        }
                    }

                    group {
                        feature {
                            selected = false
                        }
                    }.list {
                        id(Mod.betterFoliage) {
                            description = "Caution: Resource heavy. Disabled by default because there are a few render bugs."
                        }
                        id(Mod.fancyBlockParticles) {
                            description = "Caution: Resource heavy. Adds some flair to particle effects and animations. Highly configurable, costs fps. (Defaults set to be less intrusive.)"
                        }
                        id(Mod.fasterLadderClimbing) {
                            description = "Helps you control ladder climb speed and allows you to go a bit faster."
                        }
                        id(Mod.nbtedit) {
                            description = "Can be used to view NBT trees. Developer use only."
                        }
                    }
                }
            }
        }
    )
}