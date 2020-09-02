plugins {
    wrapper
    id("voodoo") version "0.5.0-SNAPSHOT"
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
        pack().experimental()
        pack().multimcExperimental()
    }
    addTask("buildAndPackAll") {
        build()
        pack().server()
        pack().experimental()
        pack().multimcExperimental()
    }
    addTask(name = "pack_experimental") {
        pack().experimental()
    }

    generateCurseforgeMods("Mod", "1.12", "1.12.1", "1.12.2")
    generateCurseforgeTexturepacks("TexturePack", "1.12", "1.12.1", "1.12.2")
    generateForge("Forge_12_2", "1.12.2")
}

repositories {
    mavenLocal()

    maven(url = "https://maven.modmuss50.me/") {
        name = "modmuss50"
    }

    maven(url = "https://dl.bintray.com/kotlin/kotlin-eap") {
        name = "Kotlin EAP"
    }

    maven(url = "https://kotlin.bintray.com/kotlinx") {
        name = "kotlinx"
    }
    
    mavenCentral()
    jcenter()
}

dependencies {
    kotlinScriptDef(group = "moe.nikky.voodoo", name = "voodoo", version = "0.5.0+")
    kotlinScriptDef(group = "moe.nikky.voodoo", name = "dsl", version = "0.5.0+")
    implementation(group = "moe.nikky.voodoo", name = "voodoo", version = "0.5.0+")
    implementation(group = "moe.nikky.voodoo", name = "dsl", version = "0.5.0+")
//    implementation(kotlin("stdlib-jdk8"))
//    implementation(kotlin("script-runtime"))
}

tasks.withType<Wrapper> {
    gradleVersion = "6.3"
    distributionType = Wrapper.DistributionType.ALL
}