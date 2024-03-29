-- Aliases
--
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = ';'
local km = vim.keymap

map('n', '<F7>', ':set syntax=on<CR>', default_opts)
map('n', '<leader>w', ':w<CR>', default_opts)
map('n', '<leader>q', ':q<CR>', default_opts)
map('n', '<leader>wq', ':wq<CR>', default_opts)
map('n', '<leader>h', ':nohl<CR>', default_opts)
map('n', '<leader>c', ':bdelete<CR>', default_opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })

-- km.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
-- -- vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>", {noremap = true, silent = true})
-- km.set("n", "<leader>fg", function() require("telescope").extensions.live_grep_args.live_grep_args() end)
-- km.set("n", "<leader>l", function() require("telescope.builtin").buffers() end)
-- km.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end)
-- vim.keymap.set('n', '<leader>ps', function()
-- 	require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
-- end)
-- vim.keymap.set('n', '<leader>m', ':Telescope harpoon marks<CR>')


-- Fugitive
map('n', '<leader>g', ':G<CR>', default_opts)

-- Trouble
km.set("n", "<leader>xx", ":TroubleToggle<CR>", default_opts)

-- Debugging
km.set('n','<F5>',":lua require'dap'.continue()<CR>", default_opts)
km.set('n','<F6>',":lua require'dap'.step_over()<CR>", default_opts)
km.set('n','<F7>',":lua require'dap'.step_into()<CR>", default_opts)
km.set('n','<F8>',":lua require'dap'.step_out()<CR>", default_opts)
km.set('n','<F9>',":lua require'dap'.disconnect()<CR>", default_opts)
km.set('n','<leader>b',":lua require'dap'.toggle_breakpoint()<CR>", default_opts)
-- km.set('n','<leader>do',":lua require'dap'.repl.open()<CR>", default_opts)
km.set('n','<leader>do',":lua require'dapui'.open()<CR>", default_opts)
km.set('n','<leader>dc',":lua require'dapui'.close()<CR>", default_opts)

-- Cokeline
-- map('n', '<S-Tab>',   '<Plug>(cokeline-focus-prev)',  { silent = true })
-- map('n', '<Tab>',     '<Plug>(cokeline-focus-next)',  { silent = true })
-- map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
-- map('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1,9 do
  -- map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
end

-- Nvim-tree
km.set('n','<Leader>n',':NvimTreeToggle<CR>', default_opts)

-- Hop
map('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

-- Insert Mode
map('i', '<C-h>', '<BS>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)



-- Harpoon
km.set('n','<leader>ss', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', default_opts)
