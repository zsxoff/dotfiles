return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            -- Replace the language servers listed here with the ones you want to install
            ensure_installed = { "yamlls" },
            handlers = {
                function(server_name)
                    vim.lsp.config[server_name] = {}
                end,
            },
        })
    end,
}
