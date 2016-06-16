@ECHO OFF

IF "%~1"=="" GOTO :END
IF "%~2"=="" GOTO :END

SET SRC=%~1
SET DST=%~2

IF NOT EXIST %SRC% goto :END
IF NOT EXIST %DST% mkdir %DST%

FOR %%t in (AppConfigIssue libuv Microsoft Newtonsoft System) do copy /y "%SRC%\%%t*" "%DST%"

:END