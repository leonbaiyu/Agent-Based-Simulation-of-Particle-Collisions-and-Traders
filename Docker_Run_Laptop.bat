cd\
tasklist | find /I "Docker Desktop.exe" > nul
if "%ERRORLEVEL%"=="1" goto OPENDOCKERANDWAIT

:AFTER
cd C:\GitHub
> nul start "" /B cmd /D /C call Open_Link.bat
docker run -it --rm -p 8888:8888 --ip 0.0.0.0 -v C:\GitHub:/home/jovyan docker-jupyter-extensible
EXIT

:OPENDOCKERANDWAIT
start "C:\Program Files\Docker\Docker" "Docker Desktop.exe"
ping 127.0.0.1 -n 16 > nul
GOTO AFTER


