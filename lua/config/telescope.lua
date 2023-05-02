local t = require 'telescope'
local actions = require 'telescope.actions'
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
        find_files                    = {
            theme = 'dropdown',
        },
        live_grep                     = {
            theme = 'dropdown',
        },
        buffers                       = {
            theme = 'dropdown',
        },
        help_tags                     = {
            theme = 'dropdown',
        },
        diagnostics                   = {
            theme = 'dropdown',
        },
        treesitter                    = {
            theme = 'dropdown',
        },
        oldfiles                      = {
            theme = 'dropdown',
        },
        current_buffer_fuzzy_find     = {
            theme = 'dropdown',
        },
        lsp_definitions               = {
            theme = 'dropdown',
        },
        lsp_type_definitions          = {
            theme = 'dropdown',
        },
        lsp_document_symbols          = {
            theme = 'dropdown',
        },
        lsp_workspace_symbols         = {
            theme = 'dropdown',
        },
        lsp_dynamic_workspace_symbols = {
            theme = 'dropdown',
        },
        lsp_implementations           = {
            theme = 'dropdown',
        },
        lsp_references                = {
            theme = 'dropdown',
        },
        git_status                    = {
            theme = 'dropdown'
        },
        git_branches                  = {
            theme = 'dropdown'
        },
    },
}

local colors = require 'catppuccin.palettes'.get_palette 'mocha'
local TelescopeColor = {
    TelescopeMatching = { fg = colors.flamingo },
    TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
    TelescopePromptPrefix = { bg = colors.surface0 },
    TelescopePromptNormal = { bg = colors.surface0 },
    TelescopeResultsNormal = { bg = colors.mantle },
    TelescopePreviewNormal = { bg = colors.mantle },
    TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
    TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
    TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
    TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
    TelescopeResultsTitle = { fg = colors.mantle },
    TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
}

for hl, col in pairs(TelescopeColor) do
    vim.api.nvim_set_hl(0, hl, col)
end

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
vim.keymap.set('n', '<space>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<space>fb', builtin.buffers, opts)
vim.keymap.set('n', '<space>ft', builtin.treesitter, opts)
vim.keymap.set('n', '<space>fo', builtin.oldfiles, opts)
vim.keymap.set('n', '<space>fi', builtin.current_buffer_fuzzy_find, opts)


-- git pickers
vim.keymap.set('n', '<space>fF', builtin.git_files, opts)
vim.keymap.set('n', '<space>fC', builtin.git_commits, opts)
vim.keymap.set('n', '<space>fB', builtin.git_branches, opts)
vim.keymap.set('n', '<space>fS', builtin.git_status, opts)
vim.keymap.set('n', '<space>fT', builtin.git_stash, opts)

-- LSP
vim.keymap.set('n', '<space>fd', builtin.diagnostics, opts)

-- zoxide
vim.keymap.set('n', '<space>fz', function() t.extensions.zoxide.list(require 'telescope.themes'.get_dropdown()) end, opts)

-- file browser
vim.keymap.set('n', '<space>fe', t.extensions.file_browser.file_browser, opts)

-- alternate keybinds
vim.keymap.set('n', '<space>,', t.extensions.file_browser.file_browser, opts)
vim.keymap.set('n', '<space>.', builtin.find_files, opts)
