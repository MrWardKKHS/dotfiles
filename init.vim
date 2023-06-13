set scrolloff=8
set nu rnu
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set splitbelow
set foldmethod=indent
set foldlevelstart=20

" Emoji
ab :tick: ✅
ab :cross: ❌

call plug#begin()
Plug 'ThePrimeagen/vim-be-good'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'tpope/vim-unimpaired'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'mattn/emmet-vim'
call plug#end()
set termguicolors
let ayucolor="dark"
let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"
colorscheme ayu

function! RunScript()
        exec winheight(0)/4."split"
        if &filetype ==# 'python'
                terminal python %
        endif
        if &filetype ==# 'javascript'
                terminal node %
        endif
endfunction

" REMAPS
let mapleader = " "
" Fuzzyfind files in current repo
nnoremap <C-p> :GFiles<CR>
" Fuzzy find files
nnoremap <leader>f :Files<CR>
" Jump to init.vim [s]ettings
nnoremap <leader>s :e<space>$MYVIMRC<CR>E<CR>
" [r]un current file (python - non interactive)
nnoremap <leader>r :w<CR>:! python % ++close true && exit<CR>
" Interactive mode
nnoremap <leader>R <c-w>o:w<CR>:call<space>RunScript()<CR>i
" source .vimrc
nnoremap <leader><CR> :so<space>$MYVIMRC<CR>
" from visual mode yank to system clipboard
vnoremap <leader>y "*y
vnoremap <leader>p "_dP
" Paste from systm clipboard
nnoremap <leader>p "*p
" Yank to system clipboard
nnoremap <leader>y "*y
" move block up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J V:m '>+1<CR>
nnoremap K V:m '<-2<CR>
" Coc goto definition
nnoremap <leader>d :call<space>CocActionAsync('jumpDefinition')<CR>



" Coc settings:
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
