local nvim_tree = require('nvim-tree')
local opts = { silent = true, remap = true }

nvim_tree.setup {
    sync_root_with_cwd = true,
}

vim.keymap.set('n', '<space>nt', function() nvim_tree.toggle() end, opts)
vim.keymap.set('n', '<space>nf', function() nvim_tree.focus() end, opts)
vim.keymap.set('n', '<space>no', function() nvim_tree.open() end, opts)
vim.keymap.set('n', '<space>\'', function() nvim_tree.toggle() end, opts)
