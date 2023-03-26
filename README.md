# WinBulk Installer-tool | WIP 📦

"WinBulk: The Bulk Software Installer - because who has time to install one program at a time? With WinBulk, you can install all programs in bulk, leaving you with more time to do the things that really matter. WinBulk is a tool for Windows, to install multiple programs at once with unattended installations, using Chocolatey as Package Manager to maximise the installation process."

### To-Do List 📝

- Improve overall code quality.
- Make the tool more user friendly.
- Ability to make and add to custom packages.

## Usage 🛠️
1. Open Powershell in elevated mode (administrator) and then run:
`Set-ExecutionPolicy RemoteSigned` 
2. Download the multi tool from: https://github.com/ElijahHW/WinBulk/archive/refs/heads/main.zip
3. Run the setup script `WinBulk.ps1`

## WinBulk File Hierachy 📂

```s
├── packages
│   ├── communication.config
│   ├── development.config
│   ├── entertainment.config
│   ├── essentials.config
│   ├── forensics.config
│   ├── others.config
│   ├── prema.config
│   └── system.config
├── scripts
│   ├── functions.ps1
│   └── variables.ps1       
├── readme.md
└── winbulk.ps1

2 directories,  20 files   
```
