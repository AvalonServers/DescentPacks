pluginManagement {
    repositories {
        mavenLocal()

        maven(url = "https://maven.modmuss50.me/") { name = "modmuss50" }
        maven(url = "https://kotlin.bintray.com/kotlinx") { name = "kotlinX" }
        mavenCentral()
        gradlePluginPortal()
    }
}

rootProject.name = "DescentPacks"