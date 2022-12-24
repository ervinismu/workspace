" ==================
" >> Basic Config <<
" ==================

" Show the filename in the window titlebar
set title

" enable line number
set relativenumber

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" highlight current line
set cursorline

" highlight search
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch



" ============================
" >> MarkdownPreview Config <<
" ============================

" open mardownpreview using Ctrl + s
nmap <C-s> <Plug>MarkdownPreview

" open mardownpreview using Ctrl + s Ctry + s
nmap <C-s><C-s> <Plug>MarkdownPreviewStop

" open mardownpreview using Ctrl + p
nmap <C-p> <Plug>MarkdownPreviewToggle

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'



" =====================
" >> NERDTree Config <<
" =====================

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p 

" Open FZF Prompt using Ctrl + p
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"



" ========================
" >> Plugins (vim-plug) <<
" ========================

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/nerdtree'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

