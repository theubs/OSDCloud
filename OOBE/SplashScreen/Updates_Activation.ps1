<#
.SYNOPSIS
    Displays a Splash Screen to Installs the latest Windows 10/11 quality updates + activates Windows. 

.NOTES
    FileName:    Updates-and-Activation.ps1
    Author:      Thibaut Lemonnier
    Version:     1.1
    Created:     2025-09-25
    Updated:     2025-09-25

    Version history:
    1.0 - (2025-09-25) Script created
    1.1 - (2025-09-25) TLS 1.2 added/forced

#>
$Scripts2run = @(
  @{
    Name = "Enabling built-in Windows Producy Key"
    Script = "https://raw.githubusercontent.com/FlorianSLZ/OSDCloud-Stuff/main/OOBE/Set-EmbeddedWINKey.ps1"
  },
  @{
    Name = "Windows Quality Updates"
    Script = "https://raw.githubusercontent.com/FlorianSLZ/OSDCloud-Stuff/main/OOBE/Windows-Updates_Quality.ps1"
  },
  @{
    Name = "Windows Firmware and Driver Updates"
    Script = "https://raw.githubusercontent.com/FlorianSLZ/OSDCloud-Stuff/main/OOBE/Windows-Updates_DriverFirmware.ps1"
  },
  @{
    Name = "Saving Logs and Cleanup"
    Script = "https://raw.githubusercontent.com/FlorianSLZ/OSDCloud-Stuff/main/OOBE/OSDCloud-CleanUp.ps1"
  }
)

Write-Host "Starting Windows Updates and Activation"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
Install-PackageProvider -Name NuGet -Force | Out-Null
Install-Script Start-SplashScreen -Force | Out-Null

Start-SplashScreen.ps1 -Processes $Scripts2run
