local nvim_tree = require 'nvim-tree'
local opts = { silent = true, remap = true }

nvim_tree.setup {
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
}


vim.keymap.set('n', '<space>nt', function() vim.cmd('NvimTreeToggle') end, opts)
vim.keymap.set('n', '<space>nf', function() vim.cmd('NvimTreeFocus') end, opts)
vim.keymap.set('n', '<space>no', function() vim.cmd('NvimTreeFindFile') end, opts)
vim.keymap.set('n', '<space>\'', function() vim.cmd('NvimTreeToggle') end, opts)
