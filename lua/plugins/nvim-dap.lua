return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Breakpoint",
        mode = { "n" },
      },
      {
        "<leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
        mode = { "n" },
      },
      {
        "<leader>ds",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
        mode = { "n" },
      },
      {
        "<leader>di",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
        mode = { "n" },
      },
      {
        "<leader>do",
        function()
          require("dap").step_out()
        end,
        desc = "Step out",
        mode = { "n" },
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "󰳟" },
        controls = {
          icons = {
            pause = "",
            play = "",
            step_into = "󰆹",
            step_over = "",
            step_out = "󰆸",
            terminate = "",
            disconnect = "",
          },
        },
      })

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end

      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end

      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  { "theHamsta/nvim-dap-virtual-text" },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("python3")
    end,
  },
}
