local cmd = vim.cmd
local opt = vim.opt

opt.termguicolors = true

-- cmd [[set background=dark]]
vim.g.everforest_background = "medium"
vim.g.everforest_better_performance = 1
vim.g.everforest_transparent_background = 1

-- cmd [[colorscheme everforest]]
cmd [[colorscheme nord]]
