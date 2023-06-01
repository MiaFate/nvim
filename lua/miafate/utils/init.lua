local M = {}
--- Open a URL under the cursor with the current operating system
---@param path string The path of the file to open with the system opener
function M.system_open(path)
	local cmd
	if vim.fn.has "win32" == 1 and vim.fn.executable "explorer" == 1 then
		cmd = { "cmd.exe", "/K", "explorer" }
	elseif vim.fn.has "unix" == 1 and vim.fn.executable "xdg-open" == 1 then
		cmd = { "xdg-open" }
	elseif (vim.fn.has "mac" == 1 or vim.fn.has "unix" == 1) and vim.fn.executable "open" == 1 then
		cmd = { "open" }
	end
	if not cmd then M.notify("Available system opening tool not found!", vim.log.levels.ERROR) end
	vim.fn.jobstart(vim.fn.extend(cmd, { path or vim.fn.expand "<cfile>" }), { detach = true })
end

--- Table based API for setting keybindings
---@param map_table table A nested table where the first key is the vim mode, the second key is the key to map, and the value is the function to set the mapping to
---@param base? table A base set of options to set on every keybinding
function M.set_mappings(map_table, base)
	-- iterate over the first keys for each mode
	base = base or {}
	for mode, maps in pairs(map_table) do
		-- iterate over each keybinding set in the current mode
		for keymap, options in pairs(maps) do
			-- build the options for the command accordingly
			if options then
				local cmd = options
				local keymap_opts = base
				if type(options) == "table" then
					cmd = options[1]
					keymap_opts = vim.tbl_deep_extend("force", keymap_opts, options)
					keymap_opts[1] = nil
				end
				if not cmd or keymap_opts.name then -- if which-key mapping, queue it
					if not M.which_key_queue then M.which_key_queue = {} end
					if not M.which_key_queue[mode] then M.which_key_queue[mode] = {} end
					M.which_key_queue[mode][keymap] = keymap_opts
				else -- if not which-key mapping, set it
					vim.keymap.set(mode, keymap, cmd, keymap_opts)
				end
			end
		end
	end
	if package.loaded["which-key"] then M.which_key_register() end -- if which-key is loaded already, register
end

return M
