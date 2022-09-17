local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- normal
	-- ["n|<Tab>"] = map_cr("normal zc"):with_noremap():with_silent(),
	-- ["n|<S-Tab>"] = map_cr("normal zo"):with_noremap():with_silent(),
	["n|[b"] = map_cr("bprevious"):with_noremap():with_silent(),
	["n|]b"] = map_cr("bnext"):with_noremap():with_silent(),
	["n|[B"] = map_cr("bfirst"):with_noremap():with_silent(),
	["n|]B"] = map_cr("blast"):with_noremap():with_silent(),
	["n|Y"] = map_cmd("y$"),
	["n|D"] = map_cmd("d$"),
	["n|n"] = map_cmd("nzzzv"):with_noremap(),
	["n|N"] = map_cmd("Nzzzv"):with_noremap(),
	["n|J"] = map_cmd("mzJ`z"):with_noremap(),
	["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap(),
	["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap(),
	["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap(),
	["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap(),
	["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
	["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
	["n|<A-;>"] = map_cr("resize -2"):with_silent(),
	["n|<A-'>"] = map_cr("resize +2"):with_silent(),
	["n|<C-q>"] = map_cmd(":wq<CR>"),
	["n|<A-q>"] = map_cmd(":Bwipeout<CR>"),
	["n|<A-s>"] = map_cu("wa"):with_noremap(),
	["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"),
	["n|<C-]>"] = map_cmd("g<C-]>"):with_noremap(),
	["n|<C-LeftMouse>"] = map_cmd("<LeftMouse>g<C-]>"):with_noremap(),
	["n|<C-RightMouse>"] = map_cmd("<LeftMouse><C-t>"):with_noremap(),

	-- Insert
	["i|<C-g>"] = map_cmd("<Esc>gUawea"):with_noremap(),
	["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap(),
	["i|<C-b>"] = map_cmd("<Left>"):with_noremap(),
	["i|<C-f>"] = map_cmd("<Right>"):with_noremap(),
	["i|<C-a>"] = map_cmd("<ESC>I"):with_noremap(),
	["i|<C-e>"] = map_cmd("<ESC>A"):with_noremap(),
	-- command line
	["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
	["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
	["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
	["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
	["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
	["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
	["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
	["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
	-- Visual
	["v|<C-c>"] = map_cmd('"+y'),
	["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
	["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
	["v|<"] = map_cmd("<gv"),
	["v|>"] = map_cmd(">gv"),
}

bind.nvim_load_mapping(def_map)
