local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set('n', '<leader>vrc', function()
    builtin.find_files({
        prompt_title = "< VimRC >",
        cwd = '$HOME/.config/nvim',
        hidden = true,
    })
end
)
