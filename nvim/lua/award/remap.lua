vim.g.mapleader = " "
vim.g.user_emmet_leader_key = ","

-- jump to explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remap visual block to avoid terminal's <C-v> as paste
vim.keymap.set("n", "<leader>v", '<C-v>')

-- Move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor at beginning with J
vim.keymap.set("n", "J", "mzJ`z")

-- ignore type issues pyright
vim.keymap.set("n", "<leader>i", "A # pyright: ignore<Esc>")

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
-- go to settings
vim.keymap.set("n", "<C-s>", [[:vsplit<space>$MYVIMRC<CR>:Ex<CR>j]])

-- marking work [m]ark [a][b][c]
-- vim.keymap.set("n", "<leader>ma", )
-- vim.keymap.set("n", "<leader>ma", ) consider using "%p to find the current file

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

