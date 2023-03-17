vim.keymap.set('n', '<leader>sh', function()
  require('telescope.builtin').find_files({
    find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
  })
end, { desc = '[S]earch [H]idden Files' })
vim.keymap.set('n', '<leader>s?', require('telescope.builtin').help_tags, { desc = '[S]earch [?]Help' })
