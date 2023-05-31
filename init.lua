-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("miafate.config.options")
require("miafate.config.folding-options")
--require("miafate.config.mappings")
--require("miafate.config.keymaps")
require("miafate.config.lazy")
require("miafate.config.kickstartconfigs")
