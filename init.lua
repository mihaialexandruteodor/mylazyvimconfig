-- Set leader early to avoid issues
vim.g.mapleader = " "

-- Load keymaps
require("config.keymaps")

-- Load plugins (assuming lazy.lua handles this)
require("config.lazy")
