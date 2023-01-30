# WinBulk Multi-tool (!WIP!)

**WinBulk is a tool for windows, to install multiple programs at once in an instant, as well as optimizing and debloating windows**


## Chocolatey as Package Manager!

> "You've never deployed software faster than you will with Chocolatey." 

- Unattended installations

## To-Do List:

- Make install * (all) an option
- Make option for choosing packages to install within a category.
- GUI?
- ...
****
## To use:
- Open Powershell in elevated mode (administrator) and then run:
`Set-ExecutionPolicy RemoteSigned` 

- Then download the multi tool: 
  - https://github.com/ElijahHW/WinBulk.git
- Then run the setup script `WinBulk.ps1`
- In Powershell: `./Goowin.ps1`

## WinBulk File Hierachy

```s
├── packages
│   ├── comms.config
│   ├── development.config
│   ├── entertainment.config
│   ├── essentials.config
│   ├── forensics.config
│   ├── others.config
│   ├── prema.config
│   └── system.config
├── scripts
│   ├── comms.ps1
│   ├── development.ps1
│   ├── entertainment.ps1
│   ├── essentials.ps1
│   ├── forensics.ps1
│   ├── others.ps1
│   ├── prema.ps1
│   └── system.ps1       
├── readme.md
└── WinBulk.ps1

2 directories,  20 files   
```

Author ~
****

│ Elijah