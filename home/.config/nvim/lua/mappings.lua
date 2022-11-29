local vimp = require('vimp')

-- fzf
vim.api.nvim_set_keymap(
    'n',
    '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true }
)

-- buffer
vim.api.nvim_set_keymap('', '<F6>', ':BufferLinePick<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-F6>', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<F7>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<F8>', ':bnext<CR>', { noremap = true, silent = true })
vimp.nnoremap('<leader>bw', ':BW<CR>')
vimp.nnoremap('<leader>1', ':BufferLineGoToBuffer 1<CR>')
vimp.nnoremap('<leader>2', ':BufferLineGoToBuffer 2<CR>')
vimp.nnoremap('<leader>3', ':BufferLineGoToBuffer 3<CR>')
vimp.nnoremap('<leader>4', ':BufferLineGoToBuffer 4<CR>')
vimp.nnoremap('<leader>5', ':BufferLineGoToBuffer 5<CR>')
vimp.nnoremap('<leader>6', ':BufferLineGoToBuffer 6<CR>')
vimp.nnoremap('<leader>7', ':BufferLineGoToBuffer 7<CR>')
vimp.nnoremap('<leader>8', ':BufferLineGoToBuffer 8<CR>')
vimp.nnoremap('<leader>9', ':BufferLineGoToBuffer 9<CR>')

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
vimp.nnoremap('<leader>s', '<C-w>s')
vimp.nnoremap('<leader>q', '<C-w>q')
-- window cursor movement
vimp.nnoremap('<A-h>', '<C-w>h')
vimp.nnoremap('<A-j>', '<C-w>j')
vimp.nnoremap('<A-k>', '<C-w>k')
vimp.nnoremap('<A-l>', '<C-w>l')
vimp.inoremap('<A-h>', '<C-\\><C-N><C-w>h')
vimp.inoremap('<A-j>', '<C-\\><C-N><C-w>j')
vimp.inoremap('<A-k>', '<C-\\><C-N><C-w>k')
vimp.inoremap('<A-l>', '<C-\\><C-N><C-w>l')
vimp.inoremap('<A-m>', '<ESC>')
vimp.vnoremap('<A-m>', '<ESC>')
vimp.cnoremap('<A-m>', '<ESC>')
-- terminal mappings
vimp.tnoremap('<A-n>', '<C-\\><C-n>')
vimp.tnoremap('<A-h>', '<C-\\><C-N><C-w>h')
vimp.tnoremap('<A-j>', '<C-\\><C-N><C-w>j')
vimp.tnoremap('<A-k>', '<C-\\><C-N><C-w>k')
vimp.tnoremap('<A-l>', '<C-\\><C-N><C-w>l')

-- fugitive
vimp.noremap('<leader>gs', ':Git<CR>')

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
