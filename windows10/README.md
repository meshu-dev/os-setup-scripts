# Windows App Install

The packages.config file is used for [Chocolatey](https://chocolatey.org) which is a Windows package manager.

Chocolately makes it super easy to install all the applications that I want installed on the OS.

## Usage
### Install Chocolatey
1. Open up the powershell application (Run as administrator).
2. Copy and paste the following line to install Chocolatey...
 
    ```Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))```

### Install apps with packages.config
1. Use powershell and navigate to location of packages.config file.
2. Run the following command...
  
    ```choco install packages.config -y```
4.  Restart machine after all applications have been installed.

## Changing apps
The packages available from Chocolate can be found at [https://chocolatey.org/packages](https://chocolatey.org/packages).

Simply update the packages.config file with whichever applications you want to install instead.

## Issues
Here are some issues I ran into which I thought would be worth mentioning here.
### Docker Desktop
Docker desktop requires Hyper-V which isn't available with Windows 10 Home edition, you could use an alternative application such as [Docker toolbox](https://chocolatey.org/packages/docker-toolbox) instead.

I decided to upgrade to Pro as I wanted to use Docker Desktop.
