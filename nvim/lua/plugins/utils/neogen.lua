-- A better annotation generator. Supports multiple languages and annotation conventions.
-- https://github.com/danymat/neogen

return {
    "danymat/neogen",
    version = "*",
    config = function()
        require("neogen").setup({})
    end,
}
