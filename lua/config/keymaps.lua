-- Keymaps configuration

vim.keymap.set("n", "<leader>fe", function()
  require("telescope").extensions.file_browser.file_browser({
    path = vim.fn.expand("%:p:h"),
    select_buffer = true,
  })
end, { desc = "File Explorer (Telescope)", silent = true, noremap = true })
