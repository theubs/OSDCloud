# OSDCloud Automation Scripts

This repository contains PowerShell scripts and resources for automating Windows 11 deployment using OSDCloud. The scripts support zero-touch installations, post-installation configuration, Windows updates, language pack installations, and cleanup tasks.

## Repository Structure

```text
LICENSE
OOBE/
    OOBE-Task.ps1
    OSDCloud-CleanUp.ps1
    ServiceUI64.exe
    Set-EmbeddedWINKey.ps1
    Windows-KeyActivation.ps1
    Windows-Updates_DriverFirmware.ps1
    Windows-Updates_Quality.ps1
    Windows-Updates.ps1
    SplashScreen/
OSDCloud ISO creation/
    OSDCloud-W11-23H2-DE-FR-IT-EN_wUpdates.ps1
    OSDCloud-W11-23H2-EN_wUpdates.ps1
    OSDCloud-W11-24H2_DE-Basic.ps1
    OSDCloud-W11-24H2-DE-FR-IT-EN_wUpdates.ps1
    OSDCloud-W11-24H2-EN_wUpdates.ps1
    TG.jpg
OSDPad/
    OSDCloud-W11-23H2-de-de_wUpdates.ps1
    ...
Scripte/
    OSDCloud-OOBE-Task.ps1
    OSDCloud-OOBE-Task_v1.ps1
```

## Key Components

- **OOBE/**: Scripts for Out-Of-Box Experience (OOBE) automation, Windows activation, updates, and cleanup.
- **OOBE/SplashScreen/**: Splash screen scripts for visual feedback during updates and activation.
- **OSDCloud ISO creation/**: Scripts to create custom OSDCloud ISO images for various Windows 11 editions and languages.
- **OSDPad/**: Deployment scripts for different Windows 11 builds and languages.
- **Scripte/**: Additional automation scripts for OSDCloud deployment.

## Example Usage

### Create a Custom OSDCloud ISO

Use scripts in [OSDCloud ISO creation/](OSDCloud%20ISO%20creation/) to generate a bootable ISO for unattended Windows deployment:

```powershell
# Example: Create a Windows 11 24H2 ISO with updates and multi-language support
.\OSDCloud ISO creation\OSDCloud-W11-24H2-DE-FR-IT-EN_wUpdates.ps1
```

### Automate OOBE Tasks

Scripts like [OOBE/OOBE-Task.ps1](OOBE/OOBE-Task.ps1) and [Scripte/OSDCloud-OOBE-Task.ps1](Scripte/OSDCloud-OOBE-Task.ps1) automate post-installation tasks such as:

- Installing language packs
- Activating Windows with embedded keys
- Applying Windows updates and drivers
- Cleaning up temporary files and logs

### Windows Updates and Drivers

- [OOBE/Windows-Updates.ps1](OOBE/Windows-Updates.ps1): Installs all available Windows updates and language packs.
- [OOBE/Windows-Updates_Quality.ps1](OOBE/Windows-Updates_Quality.ps1): Installs only quality updates.
- [OOBE/Windows-Updates_DriverFirmware.ps1](OOBE/Windows-Updates_DriverFirmware.ps1): Installs firmware and driver updates.

## Customization

- Edit the parameter blocks in deployment scripts to set OS version, edition, language, and other options.
- Modify OOBE scripts to add or remove post-installation actions as needed.

## License

This project is released under the [Unlicense](LICENSE), dedicating all code to the public domain.

---

**Author:** Thibaut Lemonnier  
**Contributors:** See commit history

For more information on OSDCloud, visit [OSDCloud Documentation](https://osdcloud.osdeploy.com/).
