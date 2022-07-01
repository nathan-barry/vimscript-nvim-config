:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set splitright
:set softtabstop=4
:set mouse=a

source ~/.config/nvim/plug-config/coc.vim

" Plugins {

	call plug#begin()

	" Languages
	Plug 'rust-lang/rust.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tomlion/vim-solidity' " Solidity syntax
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'preservim/vim-markdown'

	" Features
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'https://github.com/vim-airline/vim-airline' " Status bar
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'jiangmiao/auto-pairs'  
	Plug 'pechorin/any-jump.vim'
	Plug 'mhinz/vim-startify'

	" Theming
	Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plug 'morhetz/gruvbox'

	set encoding=UTF-8

	call plug#end()

" }
	
" File Tree {
	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"
" }

" Fzf {
	nnoremap <silent> <C-p> :Files<CR>
	nnoremap <silent> <C-g> :GFiles<CR>
	nnoremap <silent> <C-o> :Buffers<CR>
" }

" Toggle Tagbar
nmap <C-d> :TagbarToggle<CR>

" Toggle Markdown Folds
nmap <Enter> za

" Any Jump
nmap gr :AnyJump<CR>

:set completeopt-=preview " For No Previews

" Coc {
    nmap <silent> gd <Plug>(coc-definition)

    nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)
	nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

	nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

	nmap <leader>do <Plug>(coc-codeaction)

	nmap <leader>rn <Plug>(coc-rename)

	inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"'

	nnoremap <silent> K :call CocAction('doHover')<CR>
" }

" Copy and Paste
set clipboard+=unnamedplus

" Rust Autoformat
let g:rustfmt_autosave = 1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'

" Theme
:colorscheme gruvbox
