$rootDir = "C:\Users\josephmarsden\IdeaProjects\DescentPacks";
$packName = "descentfrozenhell";

Push-Location -Path $rootDir;
&".\gradlew.bat" "test_$packName"
Pop-Location;