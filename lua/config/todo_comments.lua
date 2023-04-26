require 'todo-comments'.setup()

local opts = { silent = true, noremap = true }

vim.keymap.set('n', '<space>fc', vim.cmd.TodoTelescope, opts)
