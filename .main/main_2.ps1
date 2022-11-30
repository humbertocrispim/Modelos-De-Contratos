# ------------------------------------------------------------------------------------------
#
#                           By: Humberto Crispim                                                                                                                          #
#                           Git: https://github.com/humbertocrispim                                                                                                       #
#  
# ------------------------------------------------------------------------------------------                                                                                                                                                                       #



$Repository = "https://github.com/humbertocrispim/Modelos-De-Contratos.git"
$Computers = Get-Content .\teste.txt
$Computerpath = '\\'+$computers[0]+'\c$\Modelos-De-Contratos\'


function PullGit {
    
    if (-not(Test-Path -LiteralPath $Computerpath -PathType Container)) {
        try {
    
            # Clone repository 
            git clone $repository $Computerpath 
     
        }
        catch {
            { "Error" }
        }
    
    }else {
        Set-Location $Computerpath
        git pull
        Set-Location $HOME
    }
}


for ($i = 0; $i -lt $Computers.Count; $i++) {
    PullGit
    
}



# --------------- Fim ----------------------------------------------