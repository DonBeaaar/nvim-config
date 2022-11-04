require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation. 
  -- debugger_path = "/home/felipe/vscode-js-debug/out/src/vsDebugServer.js", -- Path to vscode-js-debug installation. 
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {
		  {
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
			},
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach",
				processId = require'dap.utils'.pick_process,
				cwd = "${workspaceFolder}",
			},
			{
				name = "test",
				request = "launch",
				type = "pwa-node",
				runtimeExecutable = "npm",
				runtimeArgs = {
					"run-script",
					"dev_debug",
				},
				skipFiles = {
					"node_internals>/**"
				},
				cwd = "${workspaceFolder}",
				resolveSourceMapLocations = {
					"${workspaceFolder}/**",
					"!**/node_modules/**"
				}
			},
			{
				name = "Local default",
				request = "launch",
				type = "pwa-node",
				runtimeExecutable = "npm",
				runtimeArgs = {
					"run-script",
					"local-default",
				},
				skipFiles = {
					"node_internals>/**"
				},
				cwd = "${workspaceFolder}",
				resolveSourceMapLocations = {
					"${workspaceFolder}/**",
					"!**/node_modules/**"
				}
			}

			
  }
end
