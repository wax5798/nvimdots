local lang = {}
local conf = require("modules.lang.config")

--[[
lang["fatih/vim-go"] = {
	opt = true,
	ft = "go",
	run = ":GoInstallBinaries",
	config = conf.lang_go,
}
lang["rust-lang/rust.vim"] = { opt = true, ft = "rust" }
lang["simrat39/rust-tools.nvim"] = {
	opt = true,
	ft = "rust",
	config = conf.rust_tools,
	requires = { { "nvim-lua/plenary.nvim", opt = false } },
}
-- lang["kristijanhusak/orgmode.nvim"] = {
--     opt = true,
--     ft = "org",
--     config = conf.lang_org
-- }
lang["chrisbra/csv.vim"] = { opt = true, ft = "csv" }
--]]
lang["iamcco/markdown-preview.nvim"] = {
	opt = true,
	ft = "markdown",
	run = function() vim.fn["mkdp#util#install"]() end
	-- run = "cd app && yarn install",
}

return lang
