Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
$DefaultUser = 'Tickmao'

function e { explorer $args }

function g { git $args }
function gst { git status }
function ga { git add $args }
function gaa { git add --all }
function gcmsg { git commit -m $args }
function gcam { git commit -a -m $args }
function gid { git init --separate-git-dir=$args }

# "&" 符号的作用是将字符串按 PowerShell 命令执行
function py { &"$($env:HOMEDRIVE)$($env:HOMEPATH)\Anaconda3\python.exe" $args }
function ipy { ipython }
function act { activate $args }
function jl { jupyter lab }
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function Zshhook {
    bash
}
Set-Alias zsh Zshhook