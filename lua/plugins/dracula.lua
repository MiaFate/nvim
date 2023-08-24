return {
  "dracula/vim",
  priority = 1000,
  name = 'dracula',
  lazy = false,
  init = function()
    vim.cmd [[colorscheme dracula]]
  end
}
--config = function()
--  require("dracula").setup()
--  vim.cmd.colorscheme "dracula"
--end,
--return { {
--  "dracula/vim",
--  name = "dracula",
--  init = function()
--    vim.api.nvim_create_autocmd("ColorScheme", {
--      pattern = "dracula",
--      group = vim.api.nvim_create_augroup("dracula_customization", { clear = true }),
--      callback = function()
--        local val = { bg = "NONE", ctermbg = "NONE" }
--
--        vim.api.nvim_set_hl(0, "Normal", val)
--        vim.api.nvim_set_hl(0, "NormalNC", val)
--        vim.api.nvim_set_hl(0, "NormalFloat", val)
--      end,
--    })
--  end,
--},
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "dracula",
--    },
--  },
--}
