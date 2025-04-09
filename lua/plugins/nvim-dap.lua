return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>b",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Breakpoint toggle",
        mode = { "n" },
      },
      {
        "<leader>dh",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "Hover",
        mode = { "n", "v" },
      },
      {
        "<leader>dp",
        function()
          require("dap.ui.widgets").preview()
        end,
        desc = "Preview",
        mode = { "n", "v" },
      },
      {
        "<leader>df",
        function()
          local widgets = require("dap.ui.widgets")
          widgets.centered_float(widgets.frames)
        end,
        desc = "frames centered",
        mode = { "n" },
      },
      {
        "<leader>ds",
        function()
          local widgets = require("dap.ui.widgets")
          widgets.centered_float(widgets.scopes)
        end,
        desc = "Scopes centered",
        mode = { "n" },
      },
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
        mode = { "n" },
      },
      {
        "<F6>",
        function()
          require("dap").run_last()
        end,
        desc = "Continue",
        mode = { "n" },
      },
      {
        "<F8>",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
        mode = { "n" },
      },
      {
        "<F9>",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
        mode = { "n" },
      },
      {
        "<F10>",
        function()
          require("dap").step_out()
        end,
        desc = "Step out",
        mode = { "n" },
      },
      {
        "<leader>dc",
        function()
          require("dap").terminate()
        end,
        desc = "Continue",
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

      dap.listeners.after.launch.dapui_config = function()
        Snacks.explorer()
      end

      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end

      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      dap.listeners.after.event_exited.dapui_config = function()
        Snacks.explorer()
      end

      vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
    end,
  },
  { "theHamsta/nvim-dap-virtual-text", opts = {} },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
        python = function(config)
          local venv_path = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX")
          table.insert(config.configurations, {
            type = "python",
            request = "launch",
            name = "Python: Launch file with arguments",
            program = "${file}",
            pythonPath = venv_path
                and ((vim.fn.has("win32") == 1 and venv_path .. "/Scripts/python") or venv_path .. "/bin/python")
              or nil,
            console = "integratedTerminal",
            args = function()
              return vim.split(vim.fn.input("Arguments: "), " ")
            end,
          })
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
