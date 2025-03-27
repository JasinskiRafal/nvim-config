return {
  "WhoIsSethDaniel/mason-tool-installer",
  dependencies = {
    "williamboman/mason.nvim",
    config = true,
  },
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "clangd",
      "python-lsp-server",
      "rust-analyzer",
      "clang-format",
      "rustfmt",
    },
  },
}
