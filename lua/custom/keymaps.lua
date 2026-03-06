vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set('n', '<leader>bg', ':CMakeSelectBuildType<CR>', { desc = '[G]enerate Project' })
vim.keymap.set('n', '<leader>bb', ':CMakeBuild<CR>', { desc = '[B]uild Project' })
vim.keymap.set('n', '<leader>br', ':CMakeRun<CR>', { desc = '[R]un Project' })
vim.keymap.set('n', '<leader>bs', ':CMakeSelectBuildType<CR>', { desc = '[S]elect Build Type' })
vim.keymap.set('n', '<leader>bt', ':CMakeSelectLaunchTarget<CR>', { desc = 'Select [T]arget' })
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

-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'c', 'cpp' },
--   callback = function()
--     vim.keymap.set('n', '<leader>bb', ':CMakeBuild<CR>', { desc = '[B]uild Project', buffer = true })
--     vim.keymap.set('n', '<leader>br', ':CMakeRun<CR>', { desc = '[R]un Project', buffer = true })
--     vim.keymap.set('n', '<leader>bc', ':CMakeClean<CR>', { desc = '[C]lean Project', buffer = true })
--     vim.keymap.set('n', '<leader>bs', ':CMakeSelectBuildType<CR>', { desc = '[S]elect Build', buffer = true })
--     vim.keymap.set('n', '<leader>bt', ':CMakeSelectLaunchTarget<CR>', { desc = 'Select [T]arget', buffer = true })
--   end,
-- })
