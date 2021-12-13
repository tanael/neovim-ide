local vimp = require('vimp')

-- fzf
vim.api.nvim_set_keymap(
    'n',
    '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true }
)

-- buffer
vim.api.nvim_set_keymap('', '<F6>', ':ls<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<F7>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<F8>', ':bnext<CR>', { noremap = true, silent = true })
vimp.nnoremap('<leader>q', ':BW<CR>')

-- general
vimp.nnoremap('<leader>w', ':w<CR>')
vimp.noremap('<F12>', ':q!<CR>')
vimp.noremap('<leader>N', ':set number!<CR>')
vimp.noremap('<leader>R', ':set relativenumber!<CR>')
vimp.nnoremap('<leader>/', ':nohlsearch<CR>')
vimp.nnoremap('<C-d>', 'viw')
vimp.nnoremap('/', '/\\v')

-- insertion
vimp.inoremap('jk', '<esc>')

-- windows
vimp.nnoremap('<leader><leader>', '<C-w>w')
vimp.nnoremap('<leader>v', '<C-w>v')
vimp.nnoremap('<leader>h', '<C-w>s')
vimp.nnoremap('<leader>x', '<C-w>q')

-- fugitive
vimp.noremap('<leader>gs', ':Git<CR>')

-- nvimtree
vimp.nnoremap('<leader>t', ':NvimTreeToggle<CR>')
