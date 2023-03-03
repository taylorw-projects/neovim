require 'project_nvim'.setup {
    manual_mode = true,
    detection_methods = { 'lsp', 'pattern' },
    patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', 'Cargo.toml', 'pyproject.toml', 'poetry.toml' },
    ignore_lsp = { 'lua_ls', 'rust-analyzer' },
    exclude_dirs = {},
    show_hidden = false,
    silent_chdir = true,
    scope_chdir = 'win',
    datapath = vim.fn.stdpath 'data',
}
