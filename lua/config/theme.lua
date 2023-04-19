vim.opt.background = 'dark'
require 'catppuccin'.setup {
    integrations = {
        barbar = false,
        cmp = true,
        treesitter = true,
        nvimtree = true,
        telescope = true,
    }
}

vim.cmd.colorscheme 'catppuccin-frappe'
