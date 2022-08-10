-- Aliases
--
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

vim.g.mapleader = ' '
local km = vim.keymap

-- Normal Mode
map('n', '<F7>', ':set syntax=on<CR>', default_opts)
map('n', '<leader>w', ':w<CR>', default_opts)
map('n', '<leader>q', ':q<CR>', default_opts)
map('n', '<leader>wq', ':wq<CR>', default_opts)
map('n', '<leader>h', ':nohl<CR>', default_opts)
map('n', '<leader>c', ':bdelete<CR>', default_opts)


-- Telescope
km.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
km.set("n", "<leader>fg", function() require("telescope").extensions.live_grep_args.live_grep_args() end)
km.set("n", "<leader>l", function() require("telescope.builtin").buffers() end)
km.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end)
-- km.set("n", "<leader>fg", function() require("telescope").extensions.live_grep_args.live_grep_args() end)


-- Fugitive
map('n', '<leader>g', ':G<CR>', default_opts)

-- Debugging
km.set('n','<F5>',":lua require'dap'.continue()<CR>", default_opts)
km.set('n','<F6>',":lua require'dap'.step_over()<CR>", default_opts)
km.set('n','<F7>',":lua require'dap'.step_into()<CR>", default_opts)
km.set('n','<F8>',":lua require'dap'.step_out()<CR>", default_opts)
km.set('n','<F9>',":lua require'dap'.disconnect()<CR>", default_opts)
km.set('n','<leader>b',":lua require'dap'.toggle_breakpint()<CR>", default_opts)
km.set('n','<leader>do',":lua require'dap'.repl.open()<CR>", default_opts)

-- Insert Mode
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)


cmd [[set pastetoggle=<F2>]]
