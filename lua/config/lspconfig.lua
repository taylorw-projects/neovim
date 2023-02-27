local opts = { noremap = true, silent = true }
local tb = require 'telescope.builtin'
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>cd', function() tb.diagnostics() end, opts)

local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- keymaps
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', function() tb.lsp_definitions() end, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', function() tb.lsp_implementations() end, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>ct', function() tb.lsp_type_definitions() end, bufopts)
    vim.keymap.set('n', '<space>cn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<space>cs', function() tb.lsp_document_symbols() end, bufopts)
    vim.keymap.set('n', '<space>cS', function() tb.lsp_dynamic_workspace_symbols() end, bufopts)
    vim.keymap.set('n', 'gr', function() tb.lsp_references() end, bufopts)
    vim.keymap.set('n', '<space>cf', function() vim.lsp.buf.format { async = true } end, bufopts)

    -- autoformat on save
    vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
end

local lsp_flags = {
    debounce_text_changes = 150,
}

require 'lspconfig'.lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = { 'LuaJIT', path = vim.split(package.path, ';'), },
            },
            diagnostics = {
                enable = true,
                globals = { 'vim', 'describe', 'it', 'before_each', 'after_each' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
require 'lspconfig'.tsserver.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require 'lspconfig'.pyright.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require 'rust-tools'.setup {
    server = {
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
        checkOnSave = {
            command = 'clippy',
        },
        cargo = {
            allFeatures = true,
            features = { 'with-eventbridge', 'with-async-graphql' },
        },
    }
}
require 'lspconfig'.terraform_lsp.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
}
