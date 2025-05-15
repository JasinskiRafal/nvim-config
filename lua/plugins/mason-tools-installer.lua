return {
  "WhoIsSethDaniel/mason-tool-installer",
  dependencies = {
    "mason-org/mason.nvim",
    config = true,
  },
  opts = {
    ensure_installed = {
      "autopep8",
      "clangd",
      "clang-format",
      "cpptools",
      "debugpy",
      "lua-language-server",
      "python-lsp-server",
      "rust-analyzer",
      "stylua",
    },
  },
}
