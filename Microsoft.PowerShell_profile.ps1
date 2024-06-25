Invoke-Expression (& { (zoxide init powershell | Out-String) })
oh-my-posh init pwsh --config "$env:localappdata\oh-my-posh-config\jando.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Remove-Alias -name gc -Force -ErrorAction SilentlyContinue
Remove-Alias -name gcb -Force -ErrorAction SilentlyContinue
Remove-Alias -name gcm -Force -ErrorAction SilentlyContinue
Remove-Alias -name gcs -Force -ErrorAction SilentlyContinue
Remove-Alias -name gl -Force -ErrorAction SilentlyContinue
Remove-Alias -name gm -Force -ErrorAction SilentlyContinue
Remove-Alias -name gpv -Force -ErrorAction SilentlyContinue
Remove-Alias -name gs -Force -ErrorAction SilentlyContinue
Remove-Alias -name ga -Force -ErrorAction SilentlyContinue
Remove-Alias -name gp -Force -ErrorAction SilentlyContinue
Remove-Alias -name gd -Force -ErrorAction SilentlyContinue


Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias gti git

function gs {
	git status
}

function ga {
	git add *
}

function gd {
	git diff $args 
}

function gc {
	git commit -m $args
}

function gp {
	git push $args
}

function gl {
	git log --oneline $args
}


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode vi 

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

function which ($command) { 
  Get-Command -Name $command -ErrorAction SilentlyContinue | 
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
}
