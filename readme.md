# OSDCloud Automation Scripts

This repository contains PowerShell scripts for automating Windows deployment using OSDCloud. The scripts handle zero-touch installations, Windows updates, driver/firmware updates, language packs, and cleanup tasks.

## Key Scripts

### OOBE Automation

- **Windows Updates & Drivers**
  - `Windows-Updates.ps1` - Installs Windows updates and language packs
  - `Windows-Updates_Quality.ps1` - Installs quality/security updates only
  - `Windows-Updates_DriverFirmware.ps1` - Handles driver and firmware updates

- **System Configuration**
  - `OOBE-Task.ps1` - Main post-installation automation script
  - `Set-EmbeddedWINKey.ps1` - Windows activation
  - `OSDCloud-CleanUp.ps1` - Cleanup temporary files and logs

### ISO Creation Scripts

Located in `OSDCloud ISO creation/`:

- Multi-language Windows 11 24H2 images
- Region-specific builds (DE/FR/IT/EN)
- Basic deployment templates

## Repository Structure

``` text
OOBE/                           # Post-install automation scripts
├── Windows-Updates*.ps1        # Update management scripts
├── OOBE-Task.ps1              # Main OOBE automation
├── Set-EmbeddedWINKey.ps1     # Windows activation
└── SplashScreen/              # UI feedback assets

OSDCloud ISO creation/          # ISO building scripts
├── OSDCloud-W11-24H2*.ps1     # Windows 11 24H2 variants
└── Resources/                  # ISO build resources

OSDPad/                        # OSDPad-specific scripts
Scripte/                      # Additional automation scripts
```

## Usage Examples

### Create Deployment ISO

```powershell
# Multi-language Windows 11 24H2
.\OSDCloud ISO creation\OSDCloud-W11-25H2-en-us_wUpdates.ps1
```

### Run OOBE Tasks

```powershell
# Full post-installation setup
.\OOBE\OOBE-Task.ps1

# Update drivers only
.\OOBE\Windows-Updates_DriverFirmware.ps1 -Reboot None
```

## Customization

- Edit script parameters in header blocks to customize:
  - OS versions
  - Language packs
  - Update behavior
  - Reboot handling
  - Logging options

## Requirements

- Windows 10/11
- PowerShell 5.1 or higher
- Admin rights for updates/drivers
- Internet connectivity for Windows Update

## Logging

Most scripts log to:

``` text
C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\
```

## Author

Thibaut Lemonnier

## License

[Unlicense](LICENSE) - Public Domain

For OSDCloud documentation, visit: [OSDCloud Docs](https://osdcloud.osdeploy.com/)
