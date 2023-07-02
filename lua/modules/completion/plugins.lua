local completion = {}
local conf = require("modules.completion.config")

completion["neovim/nvim-lspconfig"] = {
	opt = true,
	event = "BufReadPre",
	config = conf.nvim_lsp,
}
completion["williamboman/mason.nvim"] = {
	requires = {
		{
			"williamboman/mason-lspconfig.nvim",
		},
	},
}
completion["nvimdev/lspsaga.nvim"] = {
    opt = true,
    tag = "v0.2.9",
    event = "LspAttach",
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    },
	after = "nvim-lspconfig",
	config = conf.lspsaga,
}
completion["ray-x/lsp_signature.nvim"] = { opt = true, after = "nvim-lspconfig" }
completion["hrsh7th/nvim-cmp"] = {
	config = conf.cmp,
	event = "InsertEnter",
	requires = {
		{ "lukas-reineke/cmp-under-comparator" },
		{ "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
		{ "hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp" },
		{ "andersevenrud/cmp-tmux", after = "cmp-nvim-lua" },
		{ "hrsh7th/cmp-path", after = "cmp-tmux" },
		{ "f3fora/cmp-spell", after = "cmp-path" },
		{ "hrsh7th/cmp-buffer", after = "cmp-spell" },
		{ "kdheepak/cmp-latex-symbols", after = "cmp-buffer" },
		-- {
		-- 	"tzachar/cmp-tabnine",
		-- 	run = "./install.sh",
		-- 	after = "cmp-latex-symbols",
		-- 	config = conf.tabnine,
		-- },
	},
}
completion["L3MON4D3/LuaSnip"] = {
	after = "nvim-cmp",
	config = conf.luasnip,
	requires = "rafamadriz/friendly-snippets",
}
completion["windwp/nvim-autopairs"] = {
	after = "nvim-cmp",
	config = conf.autopairs,
}
completion["github/copilot.vim"] = { opt = true, cmd = "Copilot" }

--[[
completion["hrsh7th/nvim-cmp"] = {
	config = conf.cmp,
	requires = {
		{ "lukas-reineke/cmp-under-comparator" },
		-- { "hrsh7th/cmp-nvim-lsp"},
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
	},
}
--]]


return completion
