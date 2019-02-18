pluginManagement {
    repositories {
        maven(url = "http://maven.modmuss50.me/") { name = "modmuss50" }
        maven(url = "https://kotlin.bintray.com/kotlinx") { name = "kotlinX" }
        maven(url = "https://jitpack.io") { name = "jitpack" }
        mavenCentral()
        gradlePluginPortal()
    }
}
rootProject.name = "DescentPacks"