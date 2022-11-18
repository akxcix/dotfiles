local sections = { lualine_a = { hello } }

require('lualine').setup({
    sections = sections,
    options = {
        icons_enabled = false,
    }
})
