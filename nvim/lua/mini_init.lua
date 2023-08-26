require('mini.indentscope').setup({
    draw = { 
        mappings = {
            object_scope = 'ii',
            object_scope_with_border = 'ai',
            goto_top = '[i',
            goto_bottom = ']i',
        },

        options = {
            border = 'both',
            indent_at_cursor = true,
            try_as_border = true,
        },
        symbol = '╎',
    }
})
