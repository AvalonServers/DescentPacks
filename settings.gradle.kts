pluginManagement {
    repositories {
        mavenCentral()
        maven(url = "https://repo.elytradev.com/") {
            name = "elytradev"
        }

        maven(url = "https://kotlin.bintray.com/kotlinx") {
            name = "kotlinX"
        }

        maven(url = "https://jitpack.io")
        gradlePluginPortal()
    }
}
rootProject.name = "DescentFrozenHell"
