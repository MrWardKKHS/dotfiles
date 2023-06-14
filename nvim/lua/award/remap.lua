vim.g.mapleader = " "

-- jump to explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor at beginning with J
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- cast highlighted word into the void when pasting
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>Y", "\"*Y")

-- Don't ever push Q
vim.keymap.set("n", "Q", "<nop>")

-- change all occurances of the highlighted word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- [r]un file
-- vim.keymap.set("n", '<leader>r', function()
--        vim.cmd('exec winheight(0)/4."split"')

--        if &filetype ==# 'python'
--                vim.cmd("terminal python '%'")
--        endif
--        if &filetype ==# 'javascript'
--                terminal node '%'
--        endif]])
--end)