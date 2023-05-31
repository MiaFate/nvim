return {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })

    wk.register({
      ["<leader>"] = {
        a = {
          name = "actions",
          b = { '"_', "Black hole register" },
          d = { 'diwxda"<CR>', "Delete HTML attribute" },
          e = { "<cmd>EslintFixAll<CR>", "Fix all ESLint errors" },
        },
        b = {
          name = "Buffers",
          d = { "<cmd>bdelete<cr>", "Close buffer" },
        },

        e = {
          "<cmd>Neotree toggle<CR>", "Neotree Toggle"
        },

        -- Tree view
        d = { vim.cmd.NeoTreeFocusToggle, "Toggle the tree view" },
        f = { vim.cmd.NeoTreeReveal, "Reveal the current file in the tree view" },

        -- Git
        g = {
          name = "git",
          b = { "<cmd>Telescope git_branches<CR>", "Git branches" },
          c = {
            b = { "<cmd>Telescope git_bcommits<CR>", "Buffer commits" },
            c = { "<cmd>Telescope git_commits<CR>", "Git commits" },
          },
          p = { "<cmd>Git push<CR>", "git push" },
          s = { "<cmd>Git<CR>", "git status" },
          u = { "<cmd>!git up<CR>", "git up" },
          z = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle git blame on line" },
        },

        h = {
          function()
            local wins = vim.api.nvim_tabpage_list_wins(0)
            if #wins > 1 and vim.api.nvim_get_option_value("filetype", { win = wins[1] }) == "neo-tree" then
              vim.fn.win_gotoid(wins[2]) -- go to non-neo-tree window to toggle alpha
              --  "<cmd>:Neotree close<cr>"
            end
            require("alpha").start(false, require("alpha").default_config)
          end,
          "Home Screen"
        },

        l = { "<cmd>Lazy<CR>", "Update plugins" },

        s = { vim.cmd.update, "Save" },

        -- Telescope
        [";"] = { "<cmd>Telescope find_files<CR>", "Find files" },
        ["?"] = { "<cmd>Telescope live_grep<CR>", "Grep in all files" },
        t = {
          name = "telescope",
          b = { "<cmd>Telescope buffers<CR>", "Open buffers" },
          d = { "<cmd>Telescope lsp_document_symbols<CR>", "Symbols in document" },
          f = { "<cmd>Telescope find_files<CR>", "Telescope find files" },
          h = { "<cmd>Telescope help_tags<CR>", "Telescope help tags" },
          m = { "<cmd>Telescope marks<CR>", "Telescope marks" },
          o = { "<cmd>Telescope oldfiles<CR>", "Recently opened files" },
          s = { "<cmd>Telescope spell_suggest<CR>", "Suggest spelling" },
          t = { "<cmd>TodoTelescope<CR>", "Todo list" },
          w = { "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", "Symbols in workspace" },
        },

        o = {
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end,
          "Toggle Explorer Focus"
        },

        y = { '"+y', "Copy to system clipboard", mode = "v" },

        x = {
          name = "trouble",
          x = { "<cmd>TroubleToggle<cr>", "Open Trouble list" },
          w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
          d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "Document Diagnostics" },
          q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
          l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
        },
      },
      ["]"] = {
        b = { "<cmd>bn<cr>", "Next buffer" },
      },
      ["["] = {
        b = { "<cmd>bp<cr>", "Previous buffer" },
      },
      {
        t = { ":FloatermToggle myfloat<CR>", "FloatermToggle" }
      },
      --aca va el proximo prefijo
    })
  end,
}
