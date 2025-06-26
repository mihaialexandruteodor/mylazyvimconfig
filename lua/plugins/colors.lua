return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before all other UI plugins
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
