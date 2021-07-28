dotnet tool install -g dotnet-roundhouse --version 1.2.1


@echo off

SET DIR=%~d0%~p0%

SET database.name=$(dbName)
SET sql.files.directory="%DIR%..\databases\%3"
SET server.database=%5
SET repository.path="https://github.com/chucknorris/roundhouse.git"
SET version.file="_BuildInfo.xml"
SET version.xpath="//buildInfo/version"
SET environment=%4
SET username=%1
SET password=%2
SET dbName=%3

rh --c=server=%server.database%;uid=%username%;pwd=%password%;database=%dbName%; --s=%server.database% --d=%dbName% --f=%sql.files.directory% --vf=%version.file% --vx=%version.xpath% --r=%repository.path% --env=%environment% --dryrun

pause