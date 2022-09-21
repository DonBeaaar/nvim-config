vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = "Harpoon",
	callback = function()
		vim.opt.winblend = 20 -- 0 ~ 100
	end,
})
