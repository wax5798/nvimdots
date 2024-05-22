local editor = {}
local conf = require("modules.editor.config")

editor["wax5798/vim-easy-align"] = { opt = true, cmd = "EasyAlign" }
editor["wax5798/vim-illuminate"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.illuminate,
}
editor["wax5798/nvim-comment"] = {
	opt = false,
	config = conf.nvim_comment,
}
editor["wax5798/nvim-treesitter"] = {
	opt = true,
	run = ":TSUpdate",
	event = "BufReadPost",
	config = conf.nvim_treesitter,
}
editor["wax5798/nvim-treesitter-textobjects"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["wax5798/nvim-ts-rainbow"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["wax5798/nvim-ts-autotag"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.autotag,
}
editor["wax5798/vim-matchup"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.matchup,
}
editor["wax5798/vim-cool"] = {
	opt = true,
	event = { "CursorMoved", "InsertEnter" },
}
editor["wax5798/hop.nvim"] = {
	opt = true,
	branch = "v2",
	event = "BufReadPost",
	config = conf.hop,
}
editor["wax5798/neoscroll.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.neoscroll,
}
editor["wax5798/toggleterm.nvim"] = {
	opt = true,
	event = "UIEnter",
	config = conf.toggleterm,
}
editor["wax5798/auto-session"] = {
	opt = true,
	cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
	config = conf.auto_session,
}
editor["wax5798/better-escape.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.better_escape,
}
editor["wax5798/nvim-dap"] = {
	opt = true,
	cmd = {
		"DapSetLogLevel",
		"DapShowLog",
		"DapContinue",
		"DapToggleBreakpoint",
		"DapToggleRepl",
		"DapStepOver",
		"DapStepInto",
		"DapStepOut",
		"DapTerminate",
	},
	module = "dap",
	config = conf.dap,
}
editor["wax5798/nvim-dap-ui"] = {
	opt = true,
	after = "nvim-dap", -- Need to call setup after dap has been initialized.
	config = conf.dapui,
}
editor["wax5798/bufdelete.nvim"] = {
	opt = true,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}
--[[
editor["wax5798/tabout.nvim"] = {
	opt = true,
	event = "InsertEnter",
	wants = "nvim-treesitter",
	after = "nvim-cmp",
	config = conf.tabout,
}
--]]
editor["wax5798/diffview.nvim"] = {
	opt = true,
	cmd = { "DiffviewOpen" },
}
editor["wax5798/stabilize.nvim"] = {
	opt = true,
	event = "BufReadPost",
}

return editor
