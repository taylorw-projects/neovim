require('project_nvim').setup {
    -- Manual mode doesn't automatically change your root directory, so you have
    -- the option to manually do so using `:ProjectRoot` command.
    manual_mode = false,

    detection_methods = { 'lsp', 'pattern' },

    patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', 'cargo.toml' },

    ignore_lsp = {},

    exclude_dirs = {},

    show_hidden = true,

    silent_chdir = true,

    scope_chdir = 'global',

    datapath = vim.fn.stdpath('data'),
}
