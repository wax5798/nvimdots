local tools = {}
local conf = require("modules.tools.config")

tools["wax5798/plenary.nvim"] = { opt = false }
tools["wax5798/telescope.nvim"] = {
	opt = true,
	module = "telescope",
	cmd = "Telescope",
	config = conf.telescope,
	requires = {
		{ "wax5798/plenary.nvim", opt = false },
		{ "wax5798/popup.nvim", opt = true },
	},
}
tools["wax5798/telescope-fzf-native.nvim"] = {
	opt = true,
	run = "make",
	after = "telescope.nvim",
}
tools["wax5798/telescope-project.nvim"] = {
	opt = true,
	after = "telescope-fzf-native.nvim",
}
tools["wax5798/telescope-frecency.nvim"] = {
	opt = true,
	after = "telescope-project.nvim",
	requires = { { "wax5798/sqlite.lua", opt = true } },
}
tools["wax5798/telescope-zoxide"] = { opt = true, after = "telescope-frecency.nvim" }
tools["wax5798/sniprun"] = {
	opt = true,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
}
tools["wax5798/which-key.nvim"] = {
	opt = true,
	keys = ",",
	config = conf.which_key,
}
tools["wax5798/trouble.nvim"] = {
	opt = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}
tools["wax5798/vim-startuptime"] = { opt = true, cmd = "StartupTime" }
tools["wax5798/wilder.nvim"] = {
	event = "CmdlineEnter",
	config = conf.wilder,
	requires = { { "wax5798/fzy-lua-native", after = "wilder.nvim" } },
}
--[[
tools["wax5798/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
}
--]]

return tools
