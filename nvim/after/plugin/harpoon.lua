local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- [a]ppend to jump list
vim.keymap.set("n", "<leader>a", mark.add_file)
-- [e]xplore jump list
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- reassign these, they are designed for dvorak
-- aim to set to 1, 2, 3, 4 fingers etc
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
