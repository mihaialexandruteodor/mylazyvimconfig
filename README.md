# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

```
git clone https://github.com/mihaialexandruteodor/mylazyvimconfig ~/.config/nvim
```
Win:
```
git clone https://github.com/mihaialexandruteodor/mylazyvimconfig.git $env:LOCALAPPDATA\nvim
```
If you're trying to reset or back up your Neovim configuration, but there’s no `nvim` folder at `%LOCALAPPDATA%\nvim`, then you likely haven't created a custom config yet.

If you're trying to start customizing Neovim, you can create a new configuration folder and file using PowerShell:

```powershell
mkdir $env:LOCALAPPDATA\nvim
New-Item -ItemType File -Path $env:LOCALAPPDATA\nvim\init.lua
```

### 1. **Find Git from GitHub Desktop**

GitHub Desktop installs Git in a versioned subfolder under:

```
%LOCALAPPDATA%\GitHubDesktop\app-*\resources\app\git\cmd
```

To locate it:

- Press `Win + R`, paste this, and press Enter:
  ```shell
  %LOCALAPPDATA%\GitHubDesktop
  ```

- Open the latest `app-*` folder (e.g., `app-3.3.6`)
- Navigate to:
  ```
  resources\app\git\cmd
  ```

- Copy the full path to the `cmd` folder. You will use this path to add Git to your system `PATH`.

### 2. ** Install Choco and fd finder**
Run whole block in `Powershell`
```
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Close Powershell and reopen, then install `fd`
```
choco install fd -y
```

