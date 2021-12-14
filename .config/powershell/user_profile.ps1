# Imports
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSReadLine
Import-Module -Name Terminal-Icons

# Theme initialization
$omp_config = Join-Path $PSScriptRoot ".\wuon.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Alias
Set-Alias ll ls
Set-Alias grep findstr

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}