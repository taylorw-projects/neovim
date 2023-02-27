require 'code_runner'.setup {
    filetype = {
        rust = 'cd $dir && cargo run',
        java = 'cd $dir && javac $fileName && java $fileNameWithoutExt',
        python = 'python3 -u',
        typescript = 'deno run',
        javascript = 'node',
        sh = 'bash',
    },
    mode = 'float',
    float = {
        close_key = 'q',
        border = 'rounded',
        height = 0.5,
        width = 0.5,
        x = 0.5,
        y = 0.5,
        border_hl = 'FloatBorder',
        float_hl = 'Normal',
        blend = 0,
    },
}

local opts = { silent = true, remap = true }
vim.keymap.set('n', '<space>R', function() vim.cmd.RunCode() end, opts)
vim.keymap.set('n', '<space>rr', function() vim.cmd.RunCode() end, opts)
vim.keymap.set('n', '<space>rf', function() vim.cmd.RunFile() end, opts)
vim.keymap.set('n', '<space>rft', function() vim.cmd.RunFile 'tab' end, opts)
vim.keymap.set('n', '<space>rp', function() vim.cmd.RunProject() end, opts)
vim.keymap.set('n', '<space>rc', function() vim.cmd.RunClose() end, opts)
vim.keymap.set('n', '<space>rcf', function() vim.cmd.CRFiletype() end, opts)
vim.keymap.set('n', '<space>rcp', function() vim.cmd.CRProjects() end, opts)
