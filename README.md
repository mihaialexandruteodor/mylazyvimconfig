# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

```
git clone https://github.com/mihaialexandruteodor/mylazyvimconfig ~/.config/nvim
```
Win:
```
git clone https://github.com/mihaialexandruteodor/mylazyvimconfig $env:LOCALAPPDATA\nvim
```
If you're trying to reset or back up your Neovim configuration, but there’s no `nvim` folder at `%LOCALAPPDATA%\nvim`, then you likely haven't created a custom config yet.

If you're trying to start customizing Neovim, you can create a new configuration folder and file using PowerShell:

```powershell
mkdir $env:LOCALAPPDATA\nvim
New-Item -ItemType File -Path $env:LOCALAPPDATA\nvim\init.lua

