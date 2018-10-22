plugins {
    id("voodoo") version "0.4.2-SNAPSHOT"
}

voodoo {
//    generatedSource = project.file(".voodoo")
//    packDirectory = project.file("packs")
}

tasks.withType<Wrapper> {
    gradleVersion = "5.0-milestone-1"
    distributionType = Wrapper.DistributionType.ALL
}