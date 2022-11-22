Import-Module posh-git
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerline.omp.json" | Invoke-Expression

function Get-GitStatus { git status }
New-Alias -Name gs -Value Get-GitStatus

function Get-GitCommit { git commit -ev $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope

function Get-GitAdd { git add --all $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

function Get-GitTree { git log --graph --oneline --decorate $args }
New-Alias -Name gt -Value Get-GitTree -Force -Option AllScope

function Get-GitPush { git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope

function Get-GitPull { git pull $args }
New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope
