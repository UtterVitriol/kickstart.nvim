vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set('t', 'jj', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>bg', ':CMakeSelectBuildType<CR>', { desc = '[G]enerate Project' })
vim.keymap.set('n', '<leader>bb', ':CMakeBuild<CR>', { desc = '[B]uild Project' })
vim.keymap.set('n', '<leader>br', ':CMakeRun<CR>', { desc = '[R]un Project' })
vim.keymap.set('n', '<leader>bs', ':CMakeSelectBuildType<CR>', { desc = '[S]elect Build Type' })
vim.keymap.set('n', '<leader>bt', ':CMakeSelectLaunchTarget<CR>', { desc = 'Select Launch [T]arget' })
vim.keymap.set('n', '<leader>bd', ':CMakeSelectBuildTarget<CR>', { desc = 'Select Buil[d] Target' })
vim.keymap.set('n', '<leader>bc', ':CMakeClean<CR>', { desc = '[C]leans All Targets' })

vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = '[O]il' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'cs',
  callback = function()
    vim.keymap.set('n', '<leader>bb', ':OverseerRun dotnetbuild<CR>', { desc = '[B]uild Project', buffer = true })
    vim.keymap.set('n', '<leader>br', ':OverseerRun dotnetrun<CR>', { desc = '[R]un Project', buffer = true })
    -- vim.keymap.set('n', '<leader>bc', ':OverseerRun dotnetclean<CR>', { desc = '[C]lean Project', buffer = true })
  end,
})
