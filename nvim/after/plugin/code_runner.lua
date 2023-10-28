require('code_runner').setup({
  filetype = {
    python = function()
            vim.cmd('startinsert')
        -- return "cd $dir && python $fileName"
        return "cd $dir && python3 main.py"
    end,
    typescript = function()
            vim.cmd('startinsert')
        return "cd $dir && node $fileName"
    end,
    javascrpit = function()
            vim.cmd('startinsert')
        return "cd $dir && node $fileName"
    end,
    c = function()
        vim.cmd('startinsert')
        return "cd $dir && gcc -o a $fileName && ./a"
    end,
  },
  project = {
      ["~/teaching_examples/space_pymunk"] = {
        name = "Space Pymunk",
        description = "Basic pymunk space shooter",
        file_name = "main.py",
      },
      ["~/dev/auto_spider"] = {
        name = "Auto Spider",
        description = "Auto mark absences",
        file_name = "absence_review.py",
      },

  },
})

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>Rf', ':RunFile<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>RR', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>R', ':RunProject<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>Rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

