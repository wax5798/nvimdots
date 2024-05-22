local ui = {}
local conf = require("modules.ui.config")

ui["wax5798/nvim-web-devicons"] = { opt = false }
ui["wax5798/nord.nvim"] = { opt = false, config = conf.nord }
ui["wax5798/catppuccin"] = {
	opt = false,
	as = "catppuccin",
	config = conf.catppuccin,
}
ui["wax5798/nvim-notify"] = {
	opt = false,
	config = conf.notify,
}
ui["wax5798/lualine.nvim"] = {
	opt = true,
	after = { "nvim-navic" },
	config = conf.lualine,
}
ui["wax5798/nvim-navic"] = {
	opt = true,
	after = "nvim-lspconfig",
	config = conf.nvim_navic,
}
ui["wax5798/alpha-nvim"] = {
	opt = true,
	event = "BufWinEnter",
	config = conf.alpha,
}
ui["wax5798/nvim-tree.lua"] = {
	opt = true,
	cmd = { "NvimTreeToggle" },
	config = conf.nvim_tree,
    tag = 'nightly'
}
ui["wax5798/gitsigns.nvim"] = {
	opt = true,
	event = { "BufReadPost", "BufNewFile" },
	config = conf.gitsigns,
    tag = "v0.6",
	requires = { "nvim-lua/plenary.nvim", opt = true },
}
ui["wax5798/indent-blankline.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.indent_blankline,
}
ui["wax5798/bufferline.nvim"] = {
	opt = true,
	tag = "*",
	event = "BufReadPost",
	config = conf.nvim_bufferline,
}
ui["wax5798/nvim-scrollview"] = {
	opt = true,
	event = { "BufReadPost" },
	config = conf.scrollview,
}
ui["wax5798/undotree"] = {
	opt = true,
	cmd = "UndotreeToggle",
}
ui["wax5798/fidget.nvim"] = {
	opt = true,
    tag = "legacy",
	event = "BufReadPost",
	config = conf.fidget,
}

return ui
