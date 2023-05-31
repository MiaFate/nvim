--local wk = require("which-key")

local mappings = { i = {}, n = {}, v = {}, t = {} }

local sections = {
  f = { desc = "Find" },
  p = { desc = "Packages" },
  l = { desc = "LSP" },
  u = { desc = "UI" },
  b = { desc = "Buffers" },
  bs = { desc = "Sort Buffers" },
  d = { desc = "Debugger" },
  g = { desc = "Git" },
  S = { desc = "Session" },
  t = { desc = "Terminal" },
}

mappings.n["<leader>b"] = sections.b
mappings.n["<leader>c"] = { "<cmd>bdelete<cr>", desc = "Close buffer" }

return mappings
--local opts = { prefix = '<leader>' }
--return wk.register(mappings, opts)
