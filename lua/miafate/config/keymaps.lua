local map = vim.keymap.set

--map("n", "<leader>e", "<cmd>:Neotree toggle<cr>", { desc = "open neotree" })
-- FloaTerm configuration
--map('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
--map('n', "t", ":FloatermToggle myfloat<CR>")
map('t', "<Esc>", "<C-\\><C-n>:q<CR>")
---- Trouble configuration
--map("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
--  { silent = true, noremap = true }
--)
--map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
--  { silent = true, noremap = true }
--)
--map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
--  { silent = true, noremap = true }
--)
--map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
--  { silent = true, noremap = true }
--)
--map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
--  { silent = true, noremap = true }
--)
--map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
--  { silent = true, noremap = true }
--)




-- I need to try this one later
--map("n", "<leader>c", function() require("miafate.utils.buffer").close() end, { desc = "Close buffer" })
--map("n", "<leader>C", function() require("miafate.utils.buffer").close(0, true) end, { desc = "Force close buffer" })
--map("n", "]b",
--  function() require("miafate.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, { desc = "Next buffer" }
--)
--map("n", "[b",
--  function() require("miafate.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
--  { desc = "Previous buffer" }
--)
--
--map("n", ">b",
--  function() require("miafate.utils.buffer").move(vim.v.count > 0 and vim.v.count or 1) end,
--  { desc = "Move buffer tab right" }
--)
--map("n", "<b",
--  function() require("miafate.utils.buffer").move(-(vim.v.count > 0 and vim.v.count or 1)) end,
--  { desc = "Move buffer tab left" }
--)
