local wk = require('whichkey_setup')

local keymap = {
    t = {':NvimTreeToggle<CR>', 'Toggle File Explorer'},
    d = {
      name = '+diagnostics',
      t = {':TroubleToggle<CR>', 'Toggle Diagnostics Window'},
      T = {':TodoTrouble<CR>', "Show project's TODOs and such inside trouble"},
    }
}

wk.register_keymap('leader', keymap, { noremap=true, silent=true })
