vim.keymap.set(
    'n',
    '<space>wz',
    function()
        vim.cmd 'NoNeckPain'
    end,
    { remap = true, silent = true }
)

require('no-neck-pain').setup {
    width = 150,
}
