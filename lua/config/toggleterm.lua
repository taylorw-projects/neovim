require 'toggleterm'.setup {
    size = function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'vertical' then
        end
        return vim.o.columns * 0.333
    end,
    open_mapping = '<C-\\>',
    shade_terminals = true,
}

local opts = { silent = true, remap = true }

vim.keymap.set('n', '<space>/', function() vim.cmd 'ToggleTerm' end, opts)
vim.keymap.set('n', '<space>wt', function() vim.cmd 'ToggleTerm' end, opts)
vim.keymap.set('n', '<space>wT', function() vim.cmd.ToggleTerm 'direction=vertical size=vim.0.columns*0.3' end, opts)
