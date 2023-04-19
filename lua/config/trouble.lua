local t = require 'trouble'
t.setup()

local opts = { silent = true, noremap = true }

-- toggling trouble
vim.keymap.set('n', '<space>xx', vim.cmd.TroubleToggle, opts)
vim.keymap.set('n', '<space>xw', function() vim.cmd.TroubleToggle 'workspace_diagnostics' end, opts)
vim.keymap.set('n', '<space>xd', function() vim.cmd.TroubleToggle 'document_diagnostics' end, opts)
vim.keymap.set('n', '<space>xl', function() vim.cmd.TroubleToggle 'loclist' end, opts)
vim.keymap.set('n', '<space>xq', function() vim.cmd.TroubleToggle 'quickfix' end, opts)
vim.keymap.set('n', 'gR', function() vim.cmd.TroubleToggle 'lsp_references' end, opts)

-- next / prev result
vim.keymap.set('n', ']t', function() t.next({ skip_groups = true, jump = true }) end, opts);
vim.keymap.set('n', '[t', function() t.previous({ skip_groups = true, jump = true }) end, opts);
