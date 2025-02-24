@echo off

:loop
start cmd /k "curl ascii.live/rick"

:: Générer un temps aléatoire entre 60 et 180 secondes
set /a WAIT_TIME=(%RANDOM% %% 12) * 60

:: Pause pour un temps aléatoire
timeout /t %WAIT_TIME% /nobreak > nul

goto loop
