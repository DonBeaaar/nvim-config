-- require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dapui.setup()

-- dap.listeners.after.event_initialized["dapui_config"] = function()
--   dapui.open()
-- end
-- dap.listeners.after.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.after.event_exited["dapui_config"] = function()
--   dapui.close()
-- end
