-- Neovim aliases
local cmd = vim.cmd
local exe = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General
vim.g.mapleader = "<Space>"
opt.encoding = "utf-8"
opt.tabstop = 2
opt.shiftwidth = 2
opt.wrap = false
opt.pastetoggle = "<F2"

-- UI
opt.number = true
opt.relativenumber = true
