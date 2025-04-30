return {
  cmd = { "pylsp" },
  filetypes = { "python" },
  root_markers = {
    ".venv",
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    ".git",
  },
  single_file_support = true,
}
