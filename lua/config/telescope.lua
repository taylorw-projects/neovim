local t = require 'telescope'
local builtin = require 'telescope.builtin'

t.setup {
    extensions = {
        project = {
            hidden_files = true,
            sync_with_nvim_tree = true,
        },
        file_browser = {
            hidden_files = true,
        },
    },
}

t.load_extension 'zoxide'
t.load_extension 'file_browser'
t.load_extension 'project'

local opts = { silent = true, noremap = true }

-- files
vim.keymap.set('n', '<space>ff', function() builtin.find_files() end, opts)
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
vim.keymap.set('n', '<space>fF', function() t.extensions.file_browser.file_browser() end, opts)

-- projects
vim.keymap.set('n', '<space>fp', function() t.extensions.project.project{} end, opts)
