local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.termguicolors = true

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

local plugins = {}

local function load_plugins_from_folder(folder)
  local files = vim.fn.globpath(folder, "*.lua", false, true)
  for _, file in ipairs(files) do
    local module = file:match(folder:gsub("/", ".") .. "%.(.+)%.lua$")
    if module then
      local ok, plugin_list = pcall(require, module)
      if ok and type(plugin_list) == "table" then
        vim.list_extend(plugins, plugin_list)
      end
    end
  end
end

load_plugins_from_folder(vim.fn.stdpath("config") .. "/lua/plugins")

-- Add LazyVim core plugins at the start
table.insert(plugins, 1, { "LazyVim/LazyVim", import = "lazyvim.plugins" })

require("lazy").setup(plugins, {
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "catppuccin" } },
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
