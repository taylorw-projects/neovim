vim.keymap.set(
    'n',
    '<C-w>z',
    function()
        vim.cmd 'NoNeckPain'
    end,
    { remap = true, silent = true }
)

require('no-neck-pain').setup {
    width = 150,
}
