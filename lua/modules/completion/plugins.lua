local completion = {}
local conf = require("modules.completion.config")

completion["wax5798/nvim-lspconfig"] = {
	opt = true,
	event = "BufReadPre",
	config = conf.nvim_lsp,
}
completion["wax5798/mason.nvim"] = {
	requires = {
		{
			"wax5798/mason-lspconfig.nvim",
		},
	},
}
completion["wax5798/lspsaga.nvim"] = {
    opt = true,
    tag = "v0.2.9",
    event = "LspAttach",
    requires = {
        {"wax5798/nvim-web-devicons"},
        --make sure you install markdown and markdown_inline parser
        {"wax5798/nvim-treesitter"}
    },
	after = "nvim-lspconfig",
	config = conf.lspsaga,
}
completion["wax5798/lsp_signature.nvim"] = { opt = true, after = "nvim-lspconfig" }
completion["wax5798/nvim-cmp"] = {
	config = conf.cmp,
	event = "InsertEnter",
	requires = {
		{ "wax5798/cmp-under-comparator" },
		{ "wax5798/cmp_luasnip", after = "LuaSnip" },
		{ "wax5798/cmp-nvim-lsp", after = "cmp_luasnip" },
		{ "wax5798/cmp-nvim-lua", after = "cmp-nvim-lsp" },
		{ "wax5798/cmp-tmux", after = "cmp-nvim-lua" },
		{ "wax5798/cmp-path", after = "cmp-tmux" },
		{ "wax5798/cmp-spell", after = "cmp-path" },
		{ "wax5798/cmp-buffer", after = "cmp-spell" },
		{ "wax5798/cmp-latex-symbols", after = "cmp-buffer" },
		-- {
		-- 	"tzachar/cmp-tabnine",
		-- 	run = "./install.sh",
		-- 	after = "cmp-latex-symbols",
		-- 	config = conf.tabnine,
		-- },
	},
}
completion["wax5798/LuaSnip"] = {
	after = "nvim-cmp",
	config = conf.luasnip,
	requires = "wax5798/friendly-snippets",
}
completion["wax5798/nvim-autopairs"] = {
	after = "nvim-cmp",
	config = conf.autopairs,
}
completion["wax5798/copilot.vim"] = { opt = true, cmd = "Copilot" }

return completion
