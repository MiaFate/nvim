--- Create a button entity to use with the alpha dashboard
---@param sc string The keybinding string to convert to a button
---@param txt string The explanation text of what the keybinding does
---@return table # A button entity table for an alpha configuration
function M.alpha_button(sc, txt)
	-- replace <leader> in shortcut text with LDR for nicer printing
	local sc_ = sc:gsub("%s", ""):gsub("LDR", "<leader>")
	-- if the leader is set, replace the text with the actual leader key for nicer printing
	if vim.g.mapleader then sc = sc:gsub("LDR", vim.g.mapleader == " " and "SPC" or vim.g.mapleader) end
	-- return the button entity to display the correct text and send the correct keybinding on press
	return {
		type = "button",
		val = txt,
		on_press = function()
			local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
			vim.api.nvim_feedkeys(key, "normal", false)
		end,
		opts = {
			position = "center",
			text = txt,
			shortcut = sc,
			cursor = 5,
			width = 36,
			align_shortcut = "right",
			hl = "DashboardCenter",
			hl_shortcut = "DashboardShortcut",
		},
	}
end
