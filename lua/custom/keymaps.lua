vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set('n', '<leader>bg', ':CMakeSelectBuildType<CR>', { desc = '[G]enerate Project' })
vim.keymap.set('n', '<leader>bb', ':CMakeBuild<CR>', { desc = '[B]uild Project' })
vim.keymap.set('n', '<leader>br', ':CMakeRun<CR>', { desc = '[R]un Project' })
vim.keymap.set('n', '<leader>bs', ':CMakeSelectBuildType<CR>', { desc = '[S]elect Build Type' })
vim.keymap.set('n', '<leader>bt', ':CMakeSelectLaunchTarget<CR>', { desc = 'Select [T]arget' })
