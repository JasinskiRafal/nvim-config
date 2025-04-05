return {
  "WhoIsSethDaniel/mason-tool-installer",
  dependencies = {
    "williamboman/mason.nvim",
    config = true,
  },
  opts = {
    ensure_installed = {
      "autopep8",
      "clangd",
      "clang-format",
      "lua-language-server",
      "python-lsp-server",
      "rust-analyzer",
      "stylua",
    },
  },
}
