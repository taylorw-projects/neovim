local opts = { remap = true, silent = true }

---------------------------=== Window Pane Management (w) ===---------------------------
-- standard functionality
vim.keymap.set('n', '<space>ww', function() vim.cmd.wincmd('w') end, opts) -- move left
vim.keymap.set('n', '<space>wh', function() vim.cmd.wincmd('h') end, opts) -- move left
vim.keymap.set('n', '<space>wj', function() vim.cmd.wincmd('j') end, opts) -- move down
vim.keymap.set('n', '<space>wk', function() vim.cmd.wincmd('k') end, opts) -- move up
vim.keymap.set('n', '<space>wl', function() vim.cmd.wincmd('l') end, opts) -- move right
vim.keymap.set('n', '<space>wv', function() vim.cmd.wincmd('v') end, opts) -- split vertical
vim.keymap.set('n', '<space>ws', function() vim.cmd.wincmd('s') end, opts) -- split horizontal
vim.keymap.set('n', '<space>wr', function() vim.cmd.wincmd('r') end, opts) -- rotate windows clockwise
vim.keymap.set('n', '<space>wR', function() vim.cmd.wincmd('R') end, opts) -- rotate windows counterclockwise
vim.keymap.set('n', '<space>wc', function() vim.cmd.wincmd('c') end, opts) -- close current pane
vim.keymap.set('n', '<space>wo', function() vim.cmd.wincmd('o') end, opts) -- delete other panes
vim.keymap.set('n', '<space>wp', function() vim.cmd.wincmd('p') end, opts) -- delete other panes
vim.keymap.set('n', '<space>w=', function() vim.cmd.wincmd('=') end, opts) -- set panes to equal width

-- Terminal
vim.keymap.set('t', '<C-q>', function() vim.cmd.wincmd('c') end, opts) -- terminal close current pane

-- nonstandard functionality
vim.keymap.set(
    'n',
    '<space>w1',
    function()
        vim.cmd.wincmd('h')
        vim.cmd('enew')
        vim.cmd.wincmd('l')
        vim.cmd.wincmd('l')
        vim.cmd('enew')
        vim.cmd.wincmd('h')
    end,
    opts
) -- swap left and right panes to new buffers
vim.keymap.set(
    'n',
    '<space>w3',
    function()
        vim.cmd.wincmd('v')
        vim.cmd.wincmd('v')
        vim.cmd('enew')
        vim.cmd.wincmd('l')
        vim.cmd.wincmd('l')
        vim.cmd('enew')
        vim.cmd.wincmd('h')
    end,
    opts
) -- open 3 panes
vim.keymap.set(
    'n',
    '<space>w4',
    function()
        vim.cmd.wincmd('v')
        vim.cmd.wincmd('s')
        vim.cmd.wincmd('l')
        vim.cmd.wincmd('s')
        vim.cmd.wincmd('h')
    end,
    opts
) -- open 4 panes
