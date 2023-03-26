# WinBulk Installer-tool 🧰

WinBulk: The Bulk Software Installer - because who has time to install one program at a time? With WinBulk, you can install all programs in bulk, leaving you with more time to do the things that are more important. WinBulk is a Windows only tool, for unattended installations, using Chocolatey as Package Manager to maximise the installation process. Which means that if the program is not available on Chocolatey, it will not be installed.

*WinBulk is a work in progress tool.* 

### To-Do List 📝

- Improve overall code quality.
- Make the tool more user friendly.
- Ability to make and add to custom packages.

### Usage 🛠️
1. Open Powershell in elevated mode (administrator) and then run: <br>
`Set-ExecutionPolicy RemoteSigned` 
2. Download the multi tool from: <br>
https://github.com/ElijahHW/WinBulk/archive/refs/heads/main.zip
3. Run the setup script `WinBulk.ps1`

### Packages 📦

WinBulk comes with pre-defined package categories that you can install with a single command. These packages are defined and located in `packages\`, these are ``.config`` files but can be edited to your liking, for example `.txt`. However, if you do change the file extension, you will have to change the file extension in the `scripts\variables.ps1` file.
Below is a list of the packages that come with WinBulk:

**WinBulk File Hierachy 📂**

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
