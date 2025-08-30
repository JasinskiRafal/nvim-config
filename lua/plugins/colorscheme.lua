return {
  "Mofiqul/vscode.nvim",
  opts = {
    style = "dark",
    italic_comments = true,
    underline_links = true,
    color_overrides = {
      vscCursorDarkDark = "#2d2d2d",
    },
  },
  priority = 1000,
  init = function()
    vim.cmd.colorscheme("vscode")
  end,
}
