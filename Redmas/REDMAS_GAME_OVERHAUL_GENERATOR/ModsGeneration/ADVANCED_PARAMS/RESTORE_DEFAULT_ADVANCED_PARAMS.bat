cd ..\..\_ENGINE\RGOG
copy SRC\REDMASPARAMS\ADVANCED_PARAM.lua USERPARAMS\ADVANCED_PARAM.lua
xcopy ..\..\_ENGINE\AMUMSS\CreatedModPAKs ..\MODS_\ /q /s /y

cd LITE
start  lite.exe ..\USERPARAMS\ADVANCED_PARAMS.lua