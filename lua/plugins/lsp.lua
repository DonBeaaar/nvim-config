local configs = require('lspconfig.configs')
local lspconfig = require('lspconfig')
local util = require 'lspconfig.util'

local lsp_flags = {
  debounce_text_changes = 50,
}

local on_attach = function(client)
		vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
		vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
		vim.keymap.set("n","gD",vim.lsp.buf.declaration, {buffer=0})
		vim.keymap.set("n","gt",vim.lsp.buf.type_definition, {buffer=0})
		vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
		client.server_capabilities.documentFormattingProvider = false
end

require('lspconfig').tsserver.setup{
	on_attach = on_attach,
	flags = lsp_flags
}
require('lspconfig').gopls.setup{
	on_attach = on_attach,
	flags = lsp_flags
}

if not configs.golangcilsp then
  configs.golangcilsp = {
    default_config = {
      cmd = { 'golangci-lint-langserver' },
      -- root_dir = require('lspconfig').util.root_pattern('.git'),
			root_dir = util.root_pattern('.git', 'go.md', 'main.go'),
			-- root_dir = function(fname)
			-- 	return util.root_pattern('.git')(fname)
			-- end,
      -- filetypes = { 'go' },
      init_options = {
				command = { "golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json" };
      },
			on_attach = function() print('Attach go') end,
			autostart = true
    },
  }
end
lspconfig.golangcilsp.setup{
	filetypes = {'go','gomod'}
}
