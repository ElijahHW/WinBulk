# WinBulk Installer-tool | WIP

**WinBulk is a tool for windows, to install multiple programs at once with unattended installations, using Chocolatey as Package Manager to maximise the installation process**


## To-Do List:

- Make install * (all) an option
- Make option for choosing packages to install within a category.

## To use:
1. Open Powershell in elevated mode (administrator) and then run:
`Set-ExecutionPolicy RemoteSigned` 

2. Download the multi tool from: https://github.com/ElijahHW/WinBulk.git
3. Run the setup script `WinBulk.ps1`

## WinBulk File Hierachy

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
