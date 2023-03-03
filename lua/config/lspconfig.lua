local opts = { noremap = true, silent = true }
local tb = require 'telescope.builtin'

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>cd', function()
    tb.diagnostics()
end, opts)

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_format = require 'lsp-format'
lsp_format.setup()

local on_attach = function(client, bufnr)
    lsp_format.on_attach(client)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', function()
        tb.lsp_definitions()
    end, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', function()
        tb.lsp_implementations()
    end, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>Wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>Wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>Wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', 'gt', function()
        tb.lsp_type_definitions()
    end, bufopts)
    vim.keymap.set('n', '<space>cr', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gs', function()
        tb.lsp_document_symbols()
    end, bufopts)
    vim.keymap.set('n', 'gS', function()
        tb.lsp_dynamic_workspace_symbols()
    end, bufopts)
    vim.keymap.set('n', 'gr', function()
        tb.lsp_references()
    end, bufopts)
    vim.keymap.set('n', '<space>cf', function()
        vim.lsp.buf.format({ async = true })
    end, bufopts)
end

local lsp_flags = { debounce_text_changes = 150 }
local lspconfig = require 'lspconfig'

-- efm setup
local black = require 'efm/black'
local flake8 = require 'efm/flake8'
local mypy = require 'efm/mypy'
local isort = require 'efm/isort'
local eslint = require 'efm/eslint'
local prettier = require 'efm/prettier'
local shfmt = require 'efm/shfmt'
local terraform = require 'efm/terraform'

local languages = {
    typescript = { prettier, eslint },
    javascript = { prettier, eslint },
    typescriptreact = { prettier, eslint },
    javascriptreact = { prettier, eslint },
    python = { black, flake8, mypy, isort },
    yaml = { prettier },
    html = { prettier },
    scss = { prettier },
    css = { prettier },
    json = { prettier },
    markdown = { prettier },
    sh = { shfmt },
    terraform = { terraform },
}

lspconfig.efm.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    init_options = { documentFormatting = true },
    root_dir = vim.loop.cwd,
    filetypes = vim.tbl_keys(languages),
    settings = {
        rootMarkers = { '.git/' },
        lintDebounce = 100,
        languages = languages,
    },
}

local neovim_path = vim.split(package.path, ';')
table.insert(neovim_path, 'lua/?.lua')
table.insert(neovim_path, 'lua/?/init.lua')

lspconfig.lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = neovim_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file('', true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

lspconfig.tsserver.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.pyright.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        pyright = {
            checkOnSave = {
                command = 'black',
            },
        },
    },
}

lspconfig.terraform_lsp.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
}

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                    'cargo', 'clippy', '--workspace', '--message-format=json',
                    '--all-targets', '--all-features'
                }
            },
            cargo = {
                allFeatures = true,
                features = { 'with-eventbridge', 'with-async-graphql' },
            },
        },
    },
}

lspconfig.jsonls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.yamlls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.bashls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
