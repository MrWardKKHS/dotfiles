-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-unimpaired'
    use 'mattn/emmet-vim'
    use 'ThePrimeagen/vim-be-good'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    --use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
    use({'agude/vim-eldar', as = 'eldar'})

    use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('CRAG666/code_runner.nvim')
    use{'neoclide/coc.nvim', branch = 'release'}
    --use({
      --"epwalsh/obsidian.nvim",
      --requires = {
        -- Required.
     --   "nvim-lua/plenary.nvim",
      --},
      --config = function()
       -- require("obsidian").setup({
        --  dir = "~/obsidian/Department Planning",
       -- })
      --end,
    --})
end)
