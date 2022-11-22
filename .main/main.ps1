##########################################################################################################################################################################
#                           By: Humberto Crispim                                                                                                                          #
#                           Git: https://github.com/humbertocrispim                                                                                                       #
#                                                                                                                                                                         #
##########################################################################################################################################################################


$PathDst = "C:\Modelos-De-Contratos" 

if (-not(Test-Path -LiteralPath $PathDst -PathType Container)) {
    try {

        # Install Chocolatery
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        
        # Clone repository 
        git clone https://github.com/humbertocrispim/Modelos-De-Contratos.git
 
    }
    catch {
        {"Error"}
    }

}    

# Disable run script PowerShell
powershell -command "& { Set-ExecutionPolicy Default }"