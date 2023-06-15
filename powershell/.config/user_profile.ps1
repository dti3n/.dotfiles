# $omp_config = Join-Path $PSScriptRoot ".\themes\robbyrussell.omp.json"
# oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

$PSStyle.FileInfo.Directory = "`e[34m" # cmd > $PSStyle

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadlineKeyHandler -Key Ctrl+k -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key Ctrl+j -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Ctrl+p -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key Ctrl+n -Function HistorySearchForward
Remove-PSReadlineKeyHandler -Chord Ctrl+l

# ================================================================================

Set-Alias vim nvim
Set-Alias ivm nvim
Set-Alias vmi nvim
Set-Alias vi nvim
Set-Alias iv nvim
Set-Alias ll dir

Function BACK1 {Set-Location -Path ../}
Function BACK2 {Set-Location -Path ../..}
Function BACK3 {Set-Location -PATH ../../..}

Function D_ {Set-Location -Path D:\}
Function D_DSA {Set-Location -Path D:\dsa}
Function D_WEB {Set-Location -Path D:\webdev}
Function D_WEB_REACT {Set-Location -Path D:\webdev\react-apps}
FUNCTION MYDOTFILES {Set-Location -Path D:\.dotfiles}
Function NVIM_CONFIG {Set-Location -Path ~\appdata\local\nvim}

Set-Alias -Name ..   -Value BACK1
Set-Alias -Name ...  -Value BACK2
Set-Alias -Name .... -Value BACK3
Set-Alias -Name d -Value D_
Set-Alias -Name w -Value D_WEB
Set-Alias -Name wr -Value D_WEB_REACT
Set-Alias -Name dsa -Value D_DSA
Set-Alias -Name dot -Value MYDOTFILES
Set-Alias -Name nvim_config -Value NVIM_CONFIG

# ================================================================================

function make-link ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

