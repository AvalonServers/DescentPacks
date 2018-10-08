@file:DependsOn("moe.nikky.voodoo:dsl:0.4.+")
@file:MavenRepository("kotlinx", "https://kotlin.bintray.com/kotlinx")
@file:MavenRepository("elytradev", "https://repo.elytradev.com")
@file:KotlinOpts("-J-Xmx4G")
@file:KotlinOpts("-J-server")
@file:Include("../.voodoo/Mod.kt")
@file:Include("../.voodoo/TexturePack.kt")
@file:Include("../.voodoo/Forge.kt")


import com.skcraft.launcher.model.modpack.Recommendation
import voodoo.data.*
import voodoo.data.curse.*
import voodoo.data.nested.*
import voodoo.provider.*
import java.io.File

fun main(args: Array<String>) = withDefaultMain(
    arguments = args,
    root = File("descentfrozenhell")
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
            releaseTypes = setOf(FileType.RELEASE, FileType.BETA, FileType.ALPHA),
            validMcVersions = setOf("1.12.2", "1.12"),
            metaUrl = "https://curse.nikky.moe/api",
            optionals = false,
            list {
                // The way these mods are parsed, the Curse URL is taken,
                // hyphens are removed and made camel case.

                // InsomniaKitten
                id(Mod.wearableBackpacks),

                // Glitchfiend
                id(Mod.toughAsNails),

                // Beeto
                id(Mod.betterWithMods),
                // primetoxins
                id(Mod.betterWithEngineering),

                // shadowfactsmc
                id(Mod.shadowfactsForgelin),

                // BluSunrize
                id(Mod.immersiveEngineering),
                // Flaxbeard
                id(Mod.immersivePetroleum),
                // FerroO2000
                id(Mod.immersiveTech),

                // Mr_TJP
                id(Mod.mrTJPCore),
                id(Mod.projectRedBase),
                id(Mod.projectRedCompat),
                id(Mod.projectRedFabrication),
                id(Mod.projectRedIntegration),
                id(Mod.projectRedLighting),

                // chicken_bones
                id(Mod.codeChickenLib18),
                id(Mod.forgeMultiPartCBE),

                // Vazkii
                id(Mod.autoRegLib),

                // chiselTeam
                id(Mod.chisel),
                // AlgorithmX2
                id(Mod.chiselsBits),

                // jaredlll08
                id(Mod.mtLib),
                id(Mod.craftTweaker),
                id(Mod.modTweaker),

                // mezz
                id(Mod.jei),

                // Team CoFH
                id(Mod.cofhCore),
                id(Mod.cofhWorld),
                id(Mod.redstoneFlux),
                id(Mod.thermalDynamics),
                id(Mod.thermalExpansion),
                
                // azanor
                id(Mod.thaumcraft),
                id(Mod.thaumicComputers),
                id(Mod.baubles),
                
                // p455w0rd
                id(Mod.p455w0rdsLibrary),
                id(Mod.toughExpansion),

                // asie
                // Charset Modules
                id(Mod.charsetLib),
                id(Mod.charsetTweaks),
                id(Mod.charsetImmersion),
                id(Mod.charsetAudio),
                id(Mod.charsetTablet),
                id(Mod.charsetTools),
                id(Mod.charsetBlockCarrying),
                id(Mod.charsetPatches),
                id(Mod.charsetStorageLocks),

                // Other
                id(Mod.foamFixForMinecraft),
                id(Mod.openComputers),
                id(Mod.zettaIndustries),

                // TeamDmfMM
                id(Mod.catwalks4),

                // ondrejduchon
                id(Mod.treeChopper),

                // malte0811
                id(Mod.industrialWires),

                // PC-Logix
                id(Mod.openFM),

                // Direct download (URL)
                withProvider(DirectProvider).list {
                    id("computronics") url "http://files.vexatos.com/Computronics/Computronics-1.12.1-1.6.5.jar"
                    id("railcraft") url "https://launcher.towerdevs.xyz/store/Railcraft_1.12.2-10.4.0-beta-2-unofficial.jar"
                }

                // Server-side mods
                group {
                    side = Side.SERVER
                }.list {
                    id("btfu-continuous-rsync-incremental-backup"),
                    id("swingthroughgrass"),
                }

                // Specific-side mods

                // Both (optional)
                group {
                    side = Side.BOTH,
                    feature {
                        selected = false
                    }
                }.list {
                    id(Mod.laggoggles) {
                        description =
                            "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    id(Mod.sampler) {
                        description =
                            "***Admin/diagnostic tool. Leave off unless asked to help test performance issues."
                    }

                    id(Mod.openeye) {
                        description =
                            "Automatically collects and submits crash reports. Enable if asked or wish to help sort issues with the pack."
                    }
                }

                // Client
                group {
                    side = Side.CLIENT,
                }.list {
                    id(Mod.journeyMap),
                    id(Mod.thaumicJei),
                    id(Mod.justEnoughResources),
                    id(Mod.inventoryTweaks),
                    id(Mod.betterAdvancements),

                    group {
                        feature {
                            selected = true,
                            recommendation = Recommendation.starred,
                        }
                    }.list {
                        id(Mod.dynamicSurroundings) {
                            description = "Caution: Resource heavy. Quite nice, has a lot of configurable features that add immersive sound/visual effects. Includes light-level overlay. (Defaults set to remove some sounds and generally be better.)",
                        }
                        id(Mod.dynamicLights) {
                            description = "Caution: Resource heavy. Turn this off if your computer isn't powerful enough.",
                        }
                    }

                    group {
                        feature {
                            selected = false,
                        }
                    }.list {
                        id(Mod.betterFoliage) {
                            description = "Caution: Resource heavy. Disabled by default because there are a few render bugs.",
                        }
                        id(Mod.fancyBlockParticles) {
                            description = "Caution: Resource heavy. Adds some flair to particle effects and animations. Highly configurable, costs fps. (Defaults set to be less intrusive.)",
                        }
                        id(Mod.fasterLadderClimbing) {
                            description = "Helps you control ladder climb speed and allows you to go a bit faster.",
                        }
                        id(Mod.nbtEdit) {
                            description = "Can be used to view NBT trees. Developer use only.",
                        }
                    }
                }
            }
        }
    )
}