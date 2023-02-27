local gitsigns_on_attach = function(bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    local gs = require('gitsigns')
    -- general keybinds
    vim.keymap.set({ 'n', 'v' }, '<space>Gs', gs.stage_hunk, bufopts)
    vim.keymap.set({ 'n', 'v' }, '<space>Gr', gs.reset_hunk, bufopts)
    vim.keymap.set('n', '<space>GS', gs.stage_buffer, bufopts)
    vim.keymap.set('n', '<space>Gu', gs.undo_stage_hunk, bufopts)
    vim.keymap.set('n', '<space>GR', gs.reset_buffer, bufopts)
    vim.keymap.set('n', '<space>Gp', gs.preview_hunk, bufopts)
    vim.keymap.set('n', '<space>Gb', function() gs.blame_line { full = true } end, bufopts)
    vim.keymap.set('n', '<space>Gd', gs.diffthis, bufopts)
    vim.keymap.set('n', '<space>GD', function() gs.diffthis('~') end, bufopts)
    vim.keymap.set('n', '<space>Gd', gs.toggle_deleted, bufopts)
    -- navigation
    vim.keymap.set('n', ']c', function()
    end, { expr = true })
    vim.keymap.set('n', ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
    end, { expr = true })
    vim.keymap.set('n', '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
    end, { expr = true })
    vim.keymap.set({ 'o', 'x' }, '<space>Gh', gs.select_hunk, bufopts)
end

require('gitsigns').setup {
    on_attach = function(bufnr)
        -- import keybinds
        gitsigns_on_attach(bufnr)
    end
}
