# Descent: Frozen Hell
This is the pack repository for Descent Frozen Hell, used by Loiste Community, which contains configuration files.

If you intend to modify configuration for this pack, create a pull request. For your pull request to be approved, you MUST test that you are able to build a lockfile from your configuration. If you do not provide proof of this, it will be denied. This will be made an automatic continuous integration feature in the future.
I will merge it after approval; and it will go live on the server at the next maintenance window.

You can build the pack for testing in three easy steps:

if you are building this for the first time \
`./gradlew poet`
this task generates a few files and ensures that are up-to-date

Build/Update the pack \
`./gradlew descentfrozenhell --args "build"`

Run your test instance (MultiMC must be installed): \
`./gradlew descentfrozenhell --args "test mmc"`

Please note if you're not updating mods in the pack (for example to test with new config), there is no need to flatten and lock a new JSON.

Packing for web server upload (Admin use only): \
`./gradlew descentfrozenhell --args "pack sk"`

Packing for Minecraft server upload (Admin use only): \
`./gradlew descentfrozenhell --args "pack server"`

You can chain operations with `-`, so for example to rebuild and launch a test instance \
`./gradlew descentfrozenhell --args "build - test mmc"`
or to package for webserver and mc server \
`./gradlew descentfrozenhell --args "pack sk - pack server"`

## Development

recommended IDE: [intellij idea CE](https://www.jetbrains.com/idea/download/)

open the folder or the file `build.gradle.kts` in idea and choose `Open as project`
