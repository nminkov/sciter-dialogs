start inspector.exe

tasklist /fi "ImageName eq scapp.exe" /fo csv 2>NUL | find /I "scapp.exe">NUL
if "%ERRORLEVEL%"=="0" goto END

start scapp.exe scapp.html --debug

:END
