return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    {
      "folke/lazydev.nvim",
      config = true,
      ft = "lua",
      opts = { library = { path = "${3rd}/luv/library", words = { "vim%.uv" } } },
    },
  },
  version = "1.*",
  opts = {
    keymap = { preset = "default" },

    appearance = {
      nerd_font_variant = "normal",
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
