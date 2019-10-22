

Create file %userprofile%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

    function prompt {
    $p = Split-Path -leaf -path (Get-Location)
    "$p> "
    }

https://superuser.com/questions/446827/configure-the-windows-powershell-to-display-only-the-current-folder-name-in-the