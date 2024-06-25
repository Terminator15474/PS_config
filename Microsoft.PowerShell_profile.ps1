Invoke-Expression (& { (zoxide init powershell | Out-String) })
oh-my-posh init pwsh --config "$env:localappdata\oh-my-posh-config\jando.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Remove-Alias gc -Force -ErrorAction SilentlyContinue
Remove-Alias gcb -Force -ErrorAction SilentlyContinue
Remove-Alias gcm -Force -ErrorAction SilentlyContinue
Remove-Alias gcs -Force -ErrorAction SilentlyContinue
Remove-Alias gl -Force -ErrorAction SilentlyContinue
Remove-Alias gm -Force -ErrorAction SilentlyContinue
Remove-Alias gpv -Force -ErrorAction SilentlyContinue
Remove-Alias gs -Force -ErrorAction SilentlyContinue
Remove-Alias ga -Force -ErrorAction SilentlyContinue
Remove-Alias gp -Force -ErrorAction SilentlyContinue
Remove-Alias gd -Force -ErrorAction SilentlyContinue


Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias gti git
Set-Alias gs "git status" -force
Set-Alias ga "git add *" -force
Set-Alias gc "git commit" -force -option 'Constant','AllScope'
Set-Alias gp "git push" -force -option 'Constant','AllScope'
Set-Alias gd "git diff" -force
Set-Alias gl "git log --oneline" -force -option 'Constant','AllScope'

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode vi 

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

function which ($command) { 
  Get-Command -Name $command -ErrorAction SilentlyContinue | 
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
}
