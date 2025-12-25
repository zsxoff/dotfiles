return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            proto = {
                "api-linter",
            },
            python = {
                "dmypy",
            },
        }
    end,
}
