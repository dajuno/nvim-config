require("null-ls").setup {
    sources = {
        -- python
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.diagnostics.flake8,
        -- rst
        require("null-ls").builtins.diagnostics.rstcheck,
        -- shell
        require("null-ls").builtins.diagnostics.shellcheck,
        require("null-ls").builtins.formatting.shfmt,
        -- text spell checking
        require("null-ls").builtins.completion.spell,
        -- lua
        -- require("null-ls").builtins.formatting.stylua,
        -- completion
        -- require("null-ls").builtins.completion.vsnip,
    },
    -- TODO: php
}
