local opt = vim.opt

opt.number = true      -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true  -- Enable highlighting of the current line
opt.expandtab = true   -- Use spaces instead of tabs
opt.foldlevel = 100
opt.ignorecase = true  -- Ignore case
opt.mouse = "a"        -- Enable mouse mode
opt.shiftround = true  -- Round indent
opt.shiftwidth = 2     -- Size of an indent
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.spelloptions:append("noplainbuffer")
opt.tabstop = 2          -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 50 -- Save swap file and trigger CursorHold
opt.wrap = false    -- Disable line wrap

if vim.fn.has("nvim-0.10") == 1 then
    opt.smoothscroll = true
    opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
    opt.foldmethod = "expr"
    opt.foldtext = ""
else
    opt.foldmethod = "indent"
    opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
