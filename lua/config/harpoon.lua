require('harpoon').setup {
    global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,
    }
}

local ui = require 'harpoon.ui'
local term = require 'harpoon.term'
local opts = { silent = true, remap = true }

-- file marking keymaps
vim.keymap.set('n', '<space>ha', function() require 'harpoon.mark'.add_file() end, opts)
vim.keymap.set('n', '<space>hm', function() ui.toggle_quick_menu() end, opts)
vim.keymap.set('n', '<space>hn', function() ui.nav_next() end, opts)
vim.keymap.set('n', '<space>hp', function() ui.nav_prev() end, opts)
vim.keymap.set('n', '<space>h0', function() ui.nav_file(0) end, opts)
vim.keymap.set('n', '<space>h1', function() ui.nav_file(1) end, opts)
vim.keymap.set('n', '<space>h2', function() ui.nav_file(2) end, opts)
vim.keymap.set('n', '<space>h3', function() ui.nav_file(3) end, opts)
vim.keymap.set('n', '<space>h4', function() ui.nav_file(4) end, opts)
vim.keymap.set('n', '<space>h5', function() ui.nav_file(5) end, opts)
vim.keymap.set('n', '<space>h6', function() ui.nav_file(6) end, opts)
vim.keymap.set('n', '<space>h7', function() ui.nav_file(7) end, opts)
vim.keymap.set('n', '<space>h8', function() ui.nav_file(8) end, opts)
vim.keymap.set('n', '<space>h9', function() ui.nav_file(9) end, opts)

-- terminal marking keymaps
vim.keymap.set('n', '<space>htm', function() require 'harpoon.cmd-ui'.toggle_quick_menu() end, opts)
vim.keymap.set('n', '<space>htc', function() term.clear_all() end, opts)
vim.keymap.set('n', '<space>ht0', function() term.gotoTerminal(0) end, opts)
vim.keymap.set('n', '<space>ht1', function() term.gotoTerminal(1) end, opts)
vim.keymap.set('n', '<space>ht2', function() term.gotoTerminal(2) end, opts)
vim.keymap.set('n', '<space>ht3', function() term.gotoTerminal(3) end, opts)
vim.keymap.set('n', '<space>ht4', function() term.gotoTerminal(4) end, opts)
vim.keymap.set('n', '<space>ht5', function() term.gotoTerminal(5) end, opts)
vim.keymap.set('n', '<space>ht6', function() term.gotoTerminal(6) end, opts)
vim.keymap.set('n', '<space>ht7', function() term.gotoTerminal(7) end, opts)
vim.keymap.set('n', '<space>ht8', function() term.gotoTerminal(8) end, opts)
vim.keymap.set('n', '<space>ht9', function() term.gotoTerminal(9) end, opts)
