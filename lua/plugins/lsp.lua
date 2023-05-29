return {
  -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim',       opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    'folke/neodev.nvim',
    "simrat39/rust-tools.nvim",
  },
  opts = {
    servers = {
      rust_analyzer = {},
    },
    setup = {
      rust_analyzer = function(_, opts)
        require("rust-tools").setup({ server = opts })
        return true
      end,
    },
  },
}
