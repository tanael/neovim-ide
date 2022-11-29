local wk = require("which-key")

wk.register({
  t = {':NvimTreeToggle<CR>', 'Toggle File Explorer'},
  d = {
    name = '+diagnostics',
    t = {':TroubleToggle<CR>', 'Toggle Diagnostics Window'},
    T = {':TodoTrouble<CR>', "Show project's TODOs and such inside trouble"},
  },
}, { prefix = "<leader>" })
