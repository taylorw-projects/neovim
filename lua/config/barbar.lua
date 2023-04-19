local opts = { noremap = true, silent = true }
require 'barbar'.setup {
    sidebar_filetypes = {
        NvimTree = true,
        undotree = { text = 'undotree' },
    },
    icons = {
        buffer_index = true,
    }
}

-- Move to previous/next
vim.keymap.set('n', '<space>bp', vim.cmd.BufferPrevious, opts)
vim.keymap.set('n', '<space>bn', vim.cmd.BufferNext, opts)
-- Re-order to previous/next
vim.keymap.set('n', '<space>bm', vim.cmd.BufferMoveNext, opts)
-- Goto buffer in position...
vim.keymap.set('n', '<space>b1', function() vim.cmd.BufferGoto '1' end, opts)
vim.keymap.set('n', '<space>b2', function() vim.cmd.BufferGoto '2' end, opts)
vim.keymap.set('n', '<space>b3', function() vim.cmd.BufferGoto '3' end, opts)
vim.keymap.set('n', '<space>b4', function() vim.cmd.BufferGoto '4' end, opts)
vim.keymap.set('n', '<space>b5', function() vim.cmd.BufferGoto '5' end, opts)
vim.keymap.set('n', '<space>b6', function() vim.cmd.BufferGoto '6' end, opts)
vim.keymap.set('n', '<space>b7', function() vim.cmd.BufferGoto '7' end, opts)
vim.keymap.set('n', '<space>b8', function() vim.cmd.BufferGoto '8' end, opts)
vim.keymap.set('n', '<space>b9', function() vim.cmd.BufferGoto '9' end, opts)
vim.keymap.set('n', '<space>b0', vim.cmd.BufferLast, opts)
-- Pin/unpin buffer
vim.keymap.set('n', '<space>bs', vim.cmd.BufferPin, opts)
-- Close buffer
vim.keymap.set('n', '<space>bc', vim.cmd.BufferClose, opts)
-- Wipeout buffer
vim.keymap.set('n', '<space>bw', vim.cmd.BufferWipeout, opts)
-- Close all but current buffer
vim.keymap.set('n', '<space>bo', vim.cmd.BufferCloseAllButCurrent, opts)
-- Close commands
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set('n', '<space>bb', vim.cmd.BufferPick, opts)
-- Sort automatically by...
vim.keymap.set('n', '<Space>bon', vim.cmd.BufferOrderByBufferNumber, opts)
vim.keymap.set('n', '<Space>bod', vim.cmd.BufferOrderByDirectory, opts)
vim.keymap.set('n', '<Space>bol', vim.cmd.BufferOrderByLanguage, opts)
vim.keymap.set('n', '<Space>bow', vim.cmd.BufferOrderByWindowNumber, opts)
