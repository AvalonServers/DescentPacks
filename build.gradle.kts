plugins {
    wrapper
    id("voodoo") version "0.4.6-SNAPSHOT"
}

voodoo {
    addTask(name = "test", parameters = listOf("test mmc"))
    addTask(name = "build", parameters = listOf("build"))
    addTask(name = "buildAndTest", parameters = listOf("build", "test mmc"))
    addTask(name = "packServer", parameters = listOf("pack server"))
    addTask(name = "buildAndPackAll", parameters = listOf("build", "pack server", "pack mmc"))
}

repositories {
    maven(url = "http://maven.modmuss50.me/") {
        name = "modmuss50"
    }
    maven(url = "https://kotlin.bintray.com/kotlinx") {
        name = "kotlinx"
    }
    mavenCentral()
    jcenter()
}


tasks.withType<Wrapper> {
    gradleVersion = "5.2"
    distributionType = Wrapper.DistributionType.ALL
}

dependencies {
    implementation(group = "moe.nikky.voodoo", name = "dsl", version = "0.4.6+")
    implementation(group = "moe.nikky.voodoo", name = "voodoo", version = "0.4.6+")
}