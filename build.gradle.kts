plugins {
    wrapper
    id("voodoo") version "0.5.22-SNAPSHOT"
}

voodoo {
    //local = true
    addTask("test") {
        test().multimc()
    }
    addTask("build") {
        build()
    }
    addTask("buildAndTest") {
        build()
        test().multimc()
    }
    addTask("packServer") {
        pack().server()
    }
    addTask("packAll") {
        pack().server()
        pack().voodoo()
        pack().multimcVoodoo()
    }
    addTask("buildAndPackAll") {
        build()
        pack().server()
        pack().voodoo()
        pack().multimcVoodoo()
    }
    addTask(name = "pack_voodoo") {
        pack().voodoo()
    }

    generateCurseforgeMods("Mod", "1.12", "1.12.1", "1.12.2")
    generateCurseforgeResourcepacks("ResourcePack", "1.12", "1.12.1", "1.12.2")
    generateForge("Forge_12_2", "1.12.2")
}

tasks.withType<Wrapper> {
    gradleVersion = "6.6"
    distributionType = Wrapper.DistributionType.ALL
}
dependencies {
	implementation(kotlin("script-runtime"))
}
