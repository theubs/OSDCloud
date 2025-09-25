<#
.SYNOPSIS

.DESCRIPTION

.NOTES
    This script creates an OSDCloud ISO for Windows 11 24H2 in English with updates.
    It sets up the workspace, creates a blank template, and configures the WinPE environment
    with a script for zero-touch deployment via GitHub.
#>


# Set Workspace Folder
$ProjectName = "OSDCloud-EN-W11-24H2"
$WorkspacePath = "C:\OSDCloud\$ProjectName"
New-Item -ItemType Directory $WorkspacePath -Force | Out-Null
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

# Blank Template
New-OSDCloudTemplate 


# Zero Touch via GitHub script
Edit-OSDCloudWinPE  -WorkspacePath $WorkspacePath `
                    -WebPSScript "https://raw.githubusercontent.com/FlorianSLZ/OSDCloud-Stuff/main/OSDPad/OSDCloud-W11-24H2-en-us_wUpdates.ps1" `
                    -Wallpaper "C:\GIT\OSDCloud\OSDCloud ISO creation\TG.png" `
                    -CloudDriver *


# Save the changes to ISO
New-OSDCloudISO -WorkspacePath $WorkspacePath
$FinalISO = "OSDCloud-$ProjectName.iso"
if(Test-Path "$WorkspacePath\$FinalISO"){
    Remove-Item -Path "$WorkspacePath\$FinalISO" -Force
}
Rename-Item -Path "$WorkspacePath\OSDCloud_NoPrompt.iso" -NewName "$WorkspacePath\$FinalISO" -Force

Write-Host -ForegroundColor Green "ISO created: $WorkspacePath\$FinalISO"