local wk = require('whichkey_setup')

local keymap = {
    t = {':NvimTreeToggle<CR>', 'Toggle File Explorer'},
    T = {':TroubleToggle<CR>', 'Toggle Diagnostics Window'},
}

wk.register_keymap('leader', keymap, { noremap=true, silent=true })
