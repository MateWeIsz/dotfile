require('lualine').setup { options = { theme = 'catppuccin' } }
require('nvim-autopairs').setup()
require('Comment').setup()
require('gitsigns').setup()

vim.lsp.config('pyright', {})
vim.lsp.config('clangd', {})
vim.lsp.enable({'pyright', 'clangd'})

local cmp = require('cmp')
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    }
})
