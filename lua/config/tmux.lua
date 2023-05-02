local nvim_tmux_nav = require 'nvim-tmux-navigation'

nvim_tmux_nav.setup {
    disable_when_zoomed = true
}

local opts = { silent = true, noremap = true }


vim.keymap.set({ 'n', 't' }, '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft, opts)
vim.keymap.set({ 'n', 't' }, '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown, opts)
vim.keymap.set({ 'n', 't' }, '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp, opts)
vim.keymap.set({ 'n', 't' }, '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight, opts)
