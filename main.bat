echo off

powershell -command "& { Set-ExecutionPolicy Bypass }"

powershell -command "& { iwr https://github.com/humbertocrispim/FICHAS-DE-CONTRATO/archive/refs/heads/main.zip -OutFile C:\ficha_contrato.zip }"
powershell -command "& { Expand-Archive -Path C:\ficha_contrato.zip -DestinationPath C:\ }"

powershell -command "& { Set-ExecutionPolicy Default }"

