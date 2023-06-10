$PSStyle.FileInfo.Directory = "`e[34m" # cmd > $PSStyle

Set-Alias vim nvim
Set-Alias ivm nvim
Set-Alias vmi nvim
Set-Alias vi nvim
Set-Alias iv nvim
Set-Alias ll dir

Function BACK1 {Set-Location -Path ../}
Function BACK2 {Set-Location -Path ../..}
Function BACK3 {Set-Location -PATH ../../..}
Set-Alias -Name ..   -Value BACK1
Set-Alias -Name ...  -Value BACK2
Set-Alias -Name .... -Value BACK3

Function D_ {Set-Location -Path D:\}
Function NVIM_CONFIG {Set-Location -Path ~\appdata\local\nvim}

Set-Alias -Name d -Value D_
Set-Alias -Name nvim_config -Value NVIM_CONFIG


oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

