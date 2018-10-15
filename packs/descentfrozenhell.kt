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
    nestedPack(
        id = "descentfrozenhell",
        title = "Descent Frozen Hell",
        authors = listOf("CitadelCore"),
        version = "1.0.4.0",
        mcVersion = "1.12.2",
        forge = Forge.mc1_12_2.build2769,
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
                add(Mod.wearableBackpacks)

                // Glitchfiend
                add(Mod.toughAsNails)

                // Beeto
                add(Mod.betterWithMods)
                // primetoxins
                add(Mod.betterWithEngineering)

                // shadowfactsmc
                add(Mod.shadowfactsForgelin)

                // BluSunrize
                add(Mod.immersiveEngineering)
                // Flaxbeard
                add(Mod.immersivePetroleum)
                // FerroO2000
                add(Mod.immersiveTech)

                // Mr_TJP
                add(Mod.mrtjpcore)
                add(Mod.projectRedBase)
                add(Mod.projectRedCompat)
                add(Mod.projectRedFabrication)
                add(Mod.projectRedIntegration)
                add(Mod.projectRedLighting)

                // chicken_bones
                add(Mod.codechickenLib18)
                add(Mod.forgeMultipartCbe)

                // Vazkii
                add(Mod.autoreglib)

                // chiselTeam
                add(Mod.chisel)
                // AlgorithmX2
                add(Mod.chiselsBits)

                // jaredlll08
                add(Mod.mtlib)
                add(Mod.crafttweaker)
                add(Mod.modtweaker)

                // mezz
                add(Mod.jei)

                // Team CoFH
                add(Mod.cofhcore)
                add(Mod.cofhWorld)
                add(Mod.redstoneFlux)
                add(Mod.thermalDynamics)
                add(Mod.thermalexpansion)

                // azanor
                add(Mod.thaumcraft)
                add(Mod.thaumicComputers)
                add(Mod.baubles)

                // p455w0rd
                add(Mod.p455w0rdsLibrary)
                add(Mod.toughExpansion)

                // asie
                // Charset Modules
                add(Mod.charsetLib)
                add(Mod.charsetTweaks)
                add(Mod.charsetImmersion)
                add(Mod.charsetAudio)
                add(Mod.charsetTablet)
                add(Mod.charsetTools)
                add(Mod.charsetBlockCarrying)
                add(Mod.charsetpatches)
                add(Mod.charsetStorageLocks)

                // Other
                add(Mod.foamfixForMinecraft)
                add(Mod.opencomputers)
                add(Mod.zettaIndustries)

                // TeamDmfMM
                add(Mod.catwalks4)

                // ondrejduchon
                add(Mod.treeChopper)

                // malte0811
                add(Mod.industrialWires)

                // PC-Logix
                add(Mod.openfm)

                // Direct download (URL)
                withProvider(DirectProvider).list {
                    add("computronics") url "http://files.vexatos.com/Computronics/Computronics-1.12.1-1.6.5.jar"
                    add("railcraft") url "https://launcher.towerdevs.xyz/store/Railcraft_1.12.2-10.4.0-beta-2-unofficial.jar"
                }

                // Server-side mods
                group {
                    side = Side.SERVER
                }.list {
                    add("btfu-continuous-rsync-incremental-backup")
                    add("swingthroughgrass")
                }

                // Specific-side mods

                // Both (optional)
                group {
                    side = Side.BOTH
                    feature {
                        selected = false
                    }
                }.list {
                    add(Mod.laggoggles) {
                        description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    add(Mod.sampler) {
                        description = "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    add(Mod.openeye) {
                        description = "Automatically collects and submits crash reports. Enable if asked or wish to help sort issues with the pack."
                    }
                }

                // Client
                group {
                    side = Side.CLIENT
                }.list {
                    add(Mod.journeymap)
                    add(Mod.thaumicJei)
                    add(Mod.justEnoughResourcesJer)
                    add(Mod.inventoryTweaks)
                    add(Mod.betterAdvancements)

                    group {
                        feature {
                            selected = true
                            recommendation = Recommendation.starred
                        }
                    }.list {
                        add(Mod.dynamicSurroundings) {
                            description = "Caution: Resource heavy. Quite nice, has a lot of configurable features that add immersive sound/visual effects. Includes light-level overlay. (Defaults set to remove some sounds and generally be better.)"
                        }
                        add(Mod.dynamicLights) {
                            description = "Caution: Resource heavy. Turn this off if your computer isn't powerful enough."
                        }
                    }

                    group {
                        feature {
                            selected = false
                        }
                    }.list {
                        add(Mod.betterFoliage) {
                            description = "Caution: Resource heavy. Disabled by default because there are a few render bugs."
                        }
                        add(Mod.fancyBlockParticles) {
                            description = "Caution: Resource heavy. Adds some flair to particle effects and animations. Highly configurable, costs fps. (Defaults set to be less intrusive.)"
                        }
                        add(Mod.fasterLadderClimbing) {
                            description = "Helps you control ladder climb speed and allows you to go a bit faster."
                        }
                        add(Mod.nbtedit) {
                            description = "Can be used to view NBT trees. Developer use only."
                        }
                    }
                }
            }
        }
    )
}