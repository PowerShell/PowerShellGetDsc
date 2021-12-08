[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/PowerShell/PowerShellGetDSC/blob/development/LICENSE)
[![PowerShell Gallery - PowerShellGetDSC](https://img.shields.io/badge/PowerShell%20Gallery-PowerShellGet-blue.svg)](https://www.powershellgallery.com/packages/PowerShellGetDSC)
[![Minimum Supported PowerShell Version](https://img.shields.io/badge/PowerShell-5.0-blue.svg)](https://github.com/PowerShell/PowerShell)

Important Note
==============
This version of PowerShellGetDSC is currently under development and is not yet complete.
If you would like to open a PR please open an issue first so that necessary discussion can take place.
Please open an issue for any feature requests, bug reports, or questions for PowerShellGetDSC.

Please note, previously PowerShellGet DSCResources were included in the PowerShellGet module. However, starting with PowerShellGet version 3.0.12-beta the DSCResources have been pulled out and will be released from this repository as its own module. 
For all versions of PowerShellGet below 3.0.0-beta1 DSCResources can be installed via the [PowerShellGallery](https://www.powershellgallery.com/packages/PowerShellGet/2.2.5) and are located in the PowerShellGetv2 repository at [https://github.com/PowerShell/PowerShellGetv2](https://github.com/PowerShell/PowerShellGetv2).  

Introduction
============

PowerShellGetDSC is a PowerShell module with DSCResources for discovering, installing, and updating the PowerShell artifacts like Modules, Scripts, and other DSC Resources.  

This DSCResource works with [PowerShellGet v3](https://github.com/PowerShell/PowerShellGet) and above only.

Requirements
============

- PowerShell 5.0 or higher.
- PowerShellGet 3.0.0-beta1 or higher.

Get PowerShellGet Module
========================

Please refer to the [PowerShellGet readme] (https://github.com/PowerShell/PowerShellGet/blob/master/README.md) or [documentation](https://www.powershellgallery.com/packages/PowerShellGet/) for the up-to-date version on how to get the PowerShellGet Module.

Get PowerShellGetDSC Source
========================

* Obtain the source
    - Download the latest source code from the release page (https://github.com/PowerShell/PowerShellGetDSC/releases) OR
    - Clone the repository (needs git)
    ```powershell
    git clone https://github.com/PowerShell/PowerShellGetDSC
    ```
