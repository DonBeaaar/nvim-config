vim.opt.termguicolors = true
-- local colors = require('kanagawa.colors').setup({ theme = 'dragon' })

function ColorMyNvim(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
	vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
end

ColorMyNvim()

local TelescopeColor = {
    TelescopeResultsBorder = { bg = "none" },
    TelescopePreviewBorder = { bg = "none" },
    TelescopePromptBorder = { bg = "none" },
    TelescopeResultsTitle = { bg = "none" },
    TelescopePreviewTitle = { bg = "none" },
    TelescopePromptTitle = { bg = "none" },
}

for hl, col in pairs(TelescopeColor) do
    vim.api.nvim_set_hl(0, hl, col)
end
