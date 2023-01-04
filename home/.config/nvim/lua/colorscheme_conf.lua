-- material
vim.g.material_style = 'darker'
require('material').setup()
vim.cmd 'colorscheme material'
require('material.functions').toggle_style()
vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })
