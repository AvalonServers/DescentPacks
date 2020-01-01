plugins {
    wrapper
    id("voodoo") version "0.4.9-SNAPSHOT"
}

voodoo {
    addTask(name = "test", parameters = listOf("test mmc"))
    addTask(name = "build", parameters = listOf("build"))
    addTask(name = "buildAndTest", parameters = listOf("build", "test mmc"))
    addTask(name = "packServer", parameters = listOf("pack server"))
    addTask(name = "packAll", parameters = listOf("pack server", "pack sk", "pack mmc"))
    addTask(name = "buildAndPackAll", parameters = listOf("build", "pack server", "pack sk", "pack mmc"))
    //local = true
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
    implementation(group = "moe.nikky.voodoo", name = "dsl", version = "0.4.9+")
    implementation(group = "moe.nikky.voodoo", name = "voodoo", version = "0.4.9+")
    implementation(kotlin("stdlib-jdk8"))
    implementation(kotlin("script-runtime"))
}

tasks.withType<Wrapper> {
    gradleVersion = "5.2"
    distributionType = Wrapper.DistributionType.ALL
}

dependencies {
    implementation(group = "moe.nikky.voodoo", name = "dsl", version = "0.4.9+")
    implementation(group = "moe.nikky.voodoo", name = "voodoo", version = "0.4.9+")
}