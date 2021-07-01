
local opts = require("autosave.config").options
local cmd = vim.cmd

local M = {}

local function setup_commands()
    if (opts["on_off_commands"] == true) then
        cmd([[command! ASOn lua require'autosave.main'.main('on')]])
        cmd([[command! ASOff lua require'autosave.main'.main('off')]])
	end
end

function M.setup(custom_opts)
	print("Setting up the plugin...")
    require("autosave.config").set_options(custom_opts)
	setup_commands()
end

return M
