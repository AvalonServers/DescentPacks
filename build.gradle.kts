plugins {
    wrapper
    id("voodoo") version "0.4.4-SNAPSHOT"
}

voodoo {
    addTask(name = "test", parameters = listOf("test mmc"))
    addTask(name = "build", parameters = listOf("build"))
    addTask(name = "buildAndTest", parameters = listOf("build", "test mmc"))
    addTask(name = "server", parameters = listOf("pack server"))
    addTask(name = "buildAndPackAll", parameters = listOf("build", "pack server", "pack mmc"))
}

tasks.withType<Wrapper> {
    gradleVersion = "5.0"
    distributionType = Wrapper.DistributionType.ALL
}