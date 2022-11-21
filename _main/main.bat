echo off

powershell -command "& { Set-ExecutionPolicy Bypass }"

powershell -command "& { iwr https://github.com/humbertocrispim/automate_program_installation/archive/refs/heads/main.zip -OutFile C:\ficha_contrato.zip }"
powershell -command "& { Expand-Archive -Path C:\ficha_contrato.zip -DestinationPath C:\ }"
powershell -command "& { mv C:\automate_program_installation-main 'C:\Modelos De Contratos' } "
cd "Modelos De Contratos"
powershell -command "& { cd 'C:\Modelos De Contrato's } "



powershell -command "& { Set-ExecutionPolicy Default }"

