$rootDir = "C:\Users\josephmarsden\IdeaProjects\DescentPacks";
$packName = "descentfrozenhell";

Push-Location -Path $rootDir;
&".\gradlew.bat" "buildAndPackAll_$packName"
Pop-Location;