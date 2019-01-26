pluginManagement {
    repositories {
        maven(url = "http://maven.modmuss50.me/") { name = "modmuss50" }
        maven(url = "https://dl.bintray.com/kotlin/kotlin-eap/") { name = "Kotlin EAP" }
        maven(url = "https://kotlin.bintray.com/kotlinx") { name = "kotlinx" }
        maven(url = "https://jitpack.io") { name = "jitpack" }
        mavenCentral()
        gradlePluginPortal()
    }
}

rootProject.name = "DescentFrozenHell"
