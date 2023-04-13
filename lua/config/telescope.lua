local t = require 'telescope'
local builtin = require 'telescope.builtin'
local fb_actions = require 'telescope._extensions.file_browser.actions'

t.setup {
    defaults = {
        file_ignore_patterns = { 'node_modules', '.venv', '__pycache__' },
        theme = 'dropdown',
    },
    extensions = {
        file_browser = {
            respect_gitignore = false,
            hidden_files = true,
            mappings = {
                ['i'] = {
                    ['<C-t>'] = fb_actions.goto_cwd,
                    ['<C-w>'] = fb_actions.change_cwd,
                },
                ['n'] = {
                    ['<C-t>'] = fb_actions.goto_cwd,
                    ['<C-w>'] = fb_actions.change_cwd,
                },
            },
            theme = 'dropdown',
        },
    },
    pickers = {
        find_files            = {
            theme = 'dropdown',
        },
        live_grep             = {
            theme = 'dropdown',
        },
        buffers               = {
            theme = 'dropdown',
        },
        help_tags             = {
            theme = 'dropdown',
        },
        diagnostics           = {
            theme = 'dropdown',
        },
        lsp_definitions       = {
            theme = 'dropdown',
        },
        lsp_type_definitions  = {
            theme = 'dropdown',
        },
        lsp_document_symbols  = {
            theme = 'dropdown',
        },
        lsp_workspace_symbols = {
            theme = 'dropdown',
        },
        lsp_implementations   = {
            theme = 'dropdown',
        },
        lsp_references        = {
            theme = 'dropdown',
        },
        git_status            = {
            theme = 'dropdown'
        },
    },
}

t.load_extension 'zoxide'
t.load_extension 'file_browser'

local opts = { silent = true, noremap = true }

-- files
vim.keymap.set('n', '<space>ff', function()
    builtin.find_files({
        find_command = {
            'fd',
            '--type',
            'f',
            '--follow',
            '--no-ignore-vcs',
            '--color=never',
        },
    })
end, opts)
vim.keymap.set('n', '<space>fg', function() builtin.live_grep() end, opts)
vim.keymap.set('n', '<space>fb', function() builtin.buffers() end, opts)
vim.keymap.set('n', '<space>ft', function() builtin.treesitter() end, opts)

-- git pickers
vim.keymap.set('n', '<space>fG', function() builtin.git_files() end, opts)
vim.keymap.set('n', '<space>fc', function() builtin.git_commits() end, opts)
vim.keymap.set('n', '<space>fB', function() builtin.git_branches() end, opts)
vim.keymap.set('n', '<space>fd', function() builtin.git_branches() end, opts)
vim.keymap.set('n', '<space>fs', function() builtin.git_status() end, opts)
vim.keymap.set('n', '<space>fS', function() builtin.git_stash() end, opts)

-- zoxide
vim.keymap.set('n', '<space>fz', t.extensions.zoxide.list, opts)

-- file browser
vim.keymap.set('n', '<space>fe', function() t.extensions.file_browser.file_browser() end, opts)

-- alternate keybinds
vim.keymap.set('n', '<space>,', function() t.extensions.file_browser.file_browser() end, opts)
vim.keymap.set('n', '<space>.', function() builtin.find_files() end, opts)
