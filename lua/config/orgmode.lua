local orgmode = require 'orgmode'
local ts_configs = require 'nvim-treesitter.configs'

orgmode.setup_ts_grammar()

ts_configs.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
    },
    ensure_installed = { 'org' },
}

orgmode.setup {
    org_agenda_files = { '~/my-orgs/knowbe4/*', '~/my-orgs/**/*' },
    org_default_notes_file = '~/my-orgs/knowbe4/refile.org',
    mappings = {
        prefix = '<space>o',
        global = {
            org_agenda = '<prefix>a',
            org_capture = '<prefix>c',
        },
    },
    win_split_mode = function(name)
        local bufnr = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_buf_set_name(bufnr, name)
        local fill = 0.8
        local width = math.floor((vim.o.columns * fill))
        local height = math.floor((vim.o.lines * fill))
        local row = math.floor((((vim.o.lines - height) / 2) - 1))
        local col = math.floor(((vim.o.columns - width) / 2))
        vim.api.nvim_open_win(bufnr, true, {
            relative = "editor",
            width = width,
            height = height,
            row = row,
            col = col,
            style = "minimal",
            border = "rounded"
        })
    end
}
