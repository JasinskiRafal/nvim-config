return {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "cxx", "cc", "h", "hpp" },
  root_markers = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
  },
  single_file_support = true,
}
