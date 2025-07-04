require("snacks")

vim.api.nvim_create_user_command("TermOpen", function()
  Snacks.terminal.open()
end, {})

vim.api.nvim_create_user_command("TermOpen", function()
  Snacks.terminal.toggle()
end, {})
