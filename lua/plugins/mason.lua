return {
  { "mason-org/mason.nvim", version = "~1.0.0" },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "~1.0.0",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_enable = false,
    },
  },
  {
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
  },
}
