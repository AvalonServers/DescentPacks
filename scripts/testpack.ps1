$rootDir = "C:\Users\josephmarsden\IdeaProjects\DescentPacks";
$packName = "descentfrozenhell";

Push-Location -Path $rootDir;
&".\gradlew.bat" "buildAndTest_$packName"
Pop-Location;