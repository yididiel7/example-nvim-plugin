-- force lua to import the modules again
package.loaded['greetings'] = nil
package.loaded['greetings.awesome-module'] = nil
package.loaded['dev'] = nil

-- set keymap to reset the file keymap comma , r ,eload
vim.api.nvim_set_keymap('n', 'r', ':luafile dev/init.lua<cr>', {})

-- keybind to test the plugin Variable 
Greetings = require('greetings')
-- keymap comma ,w
vim.api.nvim_set_keymap('n', ',w', ':lua Greetings.greet()<cr>', {})
