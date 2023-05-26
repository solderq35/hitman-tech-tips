@echo off
Title HITMAN 3 Downpatcher
SET /P _manifest= Manifest ID: 
SET /P _username= Steam Username: 
call dotnet DepotDownloader.dll -app 1847520 -depot 1659041 -manifest "%_manifest%" -user "%_username%" -remember-password -dir ".\HITMAN3DOWNPATCH" -validate
rmdir ".\HITMAN3DOWNPATCH\.DepotDownloader" /s /q
echo 1659040 >> .\HITMAN3DOWNPATCH\steam_appid.txt
pause