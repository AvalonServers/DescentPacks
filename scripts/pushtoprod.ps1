$rootDir = "C:\Users\josephmarsden\IdeaProjects\DescentPacks";
$packName = "descentfrozenhell";
$packDir = "C:\Users\josephmarsden\IdeaProjects\DescentPacks\packs\$packName";
$wslDir = "/mnt/c/Users/josephmarsden/IdeaProjects/DescentPacks/packs/$packName";

# Credentials
$username = "josephmarsden";
# Hostnames
$gameServer = "srv1.play.towerdevs.xyz";
$webServer = "51.140.48.230";
$webPublic = "https://launcher.towerdevs.xyz";

Write-Host "Uploading pack files to web server.";
wsl rsync -a "$wsldir/workspace/_upload/" "$username@$webServer`:/opt/launcher/";
Write-Host "Verifying configuration file is acccessible.";
#$real = Get-Content -Path "$packDir\workspace\_upload\$packName.json";
#$downloaded = (Invoke-WebRequest "$webPublic/$packName.json").Content;
#if ($real -ne $downloaded) {
#    throw "Could not verify uploaded content.";
#}

Write-Host "Successfully verified.";
Write-Host "Uploading pack to game server.";
wsl rsync -a "$wsldir/server_$packName/" "$username@$gameServer`:/opt/descent/$packName-installer/";
Write-Host "Stopping existing server instance."
ssh "$username@$gameServer" "screen -X stuff `"^C`"";
Write-Host "Installing new server instance."
ssh "$username@$gameServer" "cd /opt/descent/$packName-installer; java -jar ./server-installer.jar /opt/descent/$packName" | Out-Null;
Write-Host "Starting new server instance."
ssh "$username@$gameServer" "screen -X stuff `"/opt/descent/$packName/start.sh^M`"" | Out-Null;
Write-Host "All tasks completed."