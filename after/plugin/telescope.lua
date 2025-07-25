local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    local search_term = vim.fn.input("Grep > ");
    print(search_term)
    builtin.grep_string({ search = search_term });
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {});
vim.keymap.set('n', '<C-a>s', builtin.lsp_document_symbols, {});
vim.keymap.set('n', '<leader>we', builtin.diagnostics, {});
