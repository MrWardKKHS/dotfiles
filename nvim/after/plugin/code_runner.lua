require('code_runner').setup({
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = function()
            vim.cmd('startinsert')
        return "cd $dir && python $fileName"
    end,
    typescript = function()
            vim.cmd('startinsert')
        return "cd $dir && node $fileName"
    end,
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
  },
})

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>Rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>Rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>R', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>Rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
