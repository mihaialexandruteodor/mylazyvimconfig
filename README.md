# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

### 0. **Shortcuts**
`Space` + `e` : `File explorer`

## Mac:
```
git clone https://github.com/mihaialexandruteodor/mylazyvimconfig.git ~/.config/nvim
```

# Setup Nerd Font on macOS for Neovim

Follow these steps to install a Nerd Font using Homebrew and configure your terminal to display icons and glyphs correctly.

1. Tap the Homebrew Fonts repository and install FiraCode Nerd Font (or another Nerd Font):

       brew tap homebrew/cask-fonts
       brew install --cask font-fira-code-nerd-font

   You can replace `font-fira-code-nerd-font` with other Nerd Fonts like `font-jetbrains-mono-nerd-font`, `font-hack-nerd-font`, or `font-cascadia-code-nerd-font`.

2. Set the Nerd Font in your terminal:

   **For macOS Terminal:**
   - Open Terminal
   - Go to Terminal > Preferences > Profiles > Text
   - Click **Change** next to Font
   - Select **FiraCode Nerd Font** (or your installed font)
   - Close the preferences window

   **For iTerm2:**
   - Open iTerm2
   - Go to iTerm2 > Preferences > Profiles > Text
   - Click **Change Font**
   - Select **FiraCode Nerd Font** (or your installed font)
   - Close the preferences window

3. Restart your terminal and Neovim:

   Close and reopen your terminal app to apply the font change, then start Neovim to enjoy proper icons and glyphs.

# Set Up Catppuccin Theme in iTerm2.app (macOS)

[https://github.com/catppuccin/iterm](https://github.com/catppuccin/iterm)

# Set Up Catppuccin Theme in Terminal.app (macOS)

[https://github.com/catppuccin/Terminal.app](https://github.com/catppuccin/Terminal.app)

## Usage

1. Download your preferred flavor from [`themes/`](./themes/).
2. Open Terminal.app's settings with <kbd>⌘ + ,</kbd> (or through **Terminal** > **Settings...** in the menubar).
3. Open the "Profiles" tab.
4. Click on the `...` icon below the list of themes in the left panel, and select "Import...".
5. Upload the file downloaded in Step 1.

## Win:
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

# Fix "No C compiler found" Error on Windows for LazyVim

This error occurs because some plugins require a C compiler to build native extensions.

---

## 1. Install a C Compiler

### Option A: Microsoft Build Tools (Recommended)

1. Download and install the **Build Tools for Visual Studio** from:
   
   [https://visualstudio.microsoft.com/visual-cpp-build-tools/](https://visualstudio.microsoft.com/visual-cpp-build-tools/)

2. During installation, select the **"Desktop development with C++"** workload.

---

## 2. Verify Compiler Installation

- Open a new **Command Prompt** or **PowerShell** window.
- Run:

  ```powershell
  cl


Close Powershell and reopen, then install `fd`
```
choco install fd -y
```

