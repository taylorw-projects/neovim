vim.opt.background = 'dark'
require 'catppuccin'.setup {
    integrations = {
        cmp = true,
        treesitter = true,
        nvimtree = true,
    }
}

vim.cmd.colorscheme 'catppuccin-frappe'
