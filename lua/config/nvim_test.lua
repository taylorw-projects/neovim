require 'nvim-test'.setup {
    run = true,
    commands_create = true,
    filename_modifier = ':.',
    silent = false,
    term = 'terminal',
    termOpts = {
        direction = 'float',
        width = 100,
        height = 100,
        go_back = false,
        stopinsert = 'auto',
        keep_one = true,
    },
    runners = {
        cs = 'nvim-test.runners.dotnet',
        go = 'nvim-test.runners.go-test',
        haskell = 'nvim-test.runners.hspec',
        javascriptreact = 'nvim-test.runners.jest',
        javascript = 'nvim-test.runners.jest',
        lua = 'nvim-test.runners.busted',
        python = 'nvim-test.runners.pytest',
        ruby = 'nvim-test.runners.rspec',
        rust = 'nvim-test.runners.cargo-test',
        typescript = 'nvim-test.runners.jest',
        typescriptreact = 'nvim-test.runners.jest',
    }
}

local opts = { silent = true, remap = true }
vim.keymap.set('n', '<space>ts', vim.cmd.TestSuite, opts)
vim.keymap.set('n', '<space>tf', vim.cmd.TestFile, opts)
vim.keymap.set('n', '<space>te', vim.cmd.TestEdit, opts)
vim.keymap.set('n', '<space>tt', vim.cmd.TestNearest, opts)
vim.keymap.set('n', '<space>tl', vim.cmd.TestLast, opts)
vim.keymap.set('n', '<space>tv', vim.cmd.TestVisit, opts)
vim.keymap.set('n', '<space>ti', vim.cmd.TestInfo, opts)
