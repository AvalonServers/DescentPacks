# Descent: Frozen Hell
This is the pack repository for Descent Frozen Hell, used by Loiste Community, which contains configuration files.

If you intend to modify configuration for this pack, create a pull request. I will merge it after approval; and it will go live on the server at the next maintenance window.

To build the pack, you'll need to download [Voodoo](https://github.com/elytra/Voodoo).

You can build the pack for testing in three easy steps:

Flatten the YAML: \
`java -jar voodoo.jar flatten descentfrozenhell.yaml`

Create the lockfile: \
`java -jar voodoo.jar build .\descentfrozenhell.json -o descentfrozenhell.lock.json`

Run your test instance (MultiMC must be installed): \
`java -jar voodoo.jar test mmc descentfrozenhell.lock.json`

Please note if you're not updating mods in the pack (for example to test with new config), there is no need to flatten and lock a new JSON.

Packing for web server upload (Admin use only): \
`java -jar voodoo.jar pack sk descentfrozenhell.lock.json`

Packing for Minecraft server upload (Admin use only): \
`java -jar voodoo.jar pack server descentfrozenhell.lock.json`