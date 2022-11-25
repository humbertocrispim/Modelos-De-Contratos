# ------------------------------------------------------------------------------------------
#
#                           By: Humberto Crispim                                                                                                                          #
#                           Git: https://github.com/humbertocrispim                                                                                                       #
#  
# ------------------------------------------------------------------------------------------                                                                                                                                                                       #

# --------------------- Variables ----------------------------------------------------------

$repository = "https://github.com/GEPGAV/FICHAS-DE-CONTRATO.git"
$PathDst = "C:\Modelos-De-Contratos" 

# ------------------------------------------------------------------------------------------

Set-Location C:\

if (-not(Test-Path -LiteralPath $PathDst -PathType Container)) {
    try {

        # Install Chocolatery
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        
        choco install git -y 

        # Clone repository 
        powershell "& {
        git clone $repository $PathDst
        }"
        
 
    }
    catch {
        { "Error" }
    }

}else {
    Set-Location $PathDst
    git pull
}


Set-ExecutionPolicy Default -Force

exit

# ------------------------------- Fim ----------------------------------------------