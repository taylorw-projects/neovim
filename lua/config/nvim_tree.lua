local function custom_on_attach(bufnr)
    local api = require 'nvim-tree.api'

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '+', api.tree.change_root_to_node, opts('CD'))
    vim.keymap.set('n', 'c', api.fs.create, opts('Create'))
    vim.keymap.set('n', '<C-y>', api.fs.copy.node, opts('Yank Node'))
end

require 'nvim-tree'.setup {
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    on_attach = custom_on_attach
}

local opts = { silent = true, noremap = true }

vim.keymap.set('n', '<space>nt', function() vim.cmd('NvimTreeToggle') end, opts)
vim.keymap.set('n', '<space>nf', function() vim.cmd('NvimTreeFocus') end, opts)
vim.keymap.set('n', '<space>no', function() vim.cmd('NvimTreeFindFile') end, opts)
vim.keymap.set('n', '<space>\'', function() vim.cmd('NvimTreeToggle') end, opts)
