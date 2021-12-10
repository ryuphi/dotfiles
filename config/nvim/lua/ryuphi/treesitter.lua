local treesitter = require('nvim-treesitter.configs')

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning', 
        },
        update_in_insert = true,
    }
)

treesitter.setup {
    ensure_installed = {"html", "javascript", "yaml", "lua", "go", "tsx", "json", "graphql", "gomod", "scss", "regex", "vue", "typescript", "vim", "yaml"},
    highlight = {
        enable = true
    },
    autopairs = {
        enable = true
    },
}

