:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set splitright
:set softtabstop=4
:set mouse=a
set nobackup
set noswapfile
set nowritebackup
set ignorecase                    " ignore case when searching
set smartcase  

source ~/.config/nvim/plug-config/coc.vim

" Plugins {

	call plug#begin()

	" Languages
	Plug 'rust-lang/rust.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tomlion/vim-solidity' " Solidity syntax
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'}
	Plug 'neovim/nvim-lspconfig'
    Plug 'simrat39/rust-tools.nvim'

	" Features
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'https://github.com/vim-airline/vim-airline' " Status bar
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'} " ctrl-down ctrl-up
	Plug 'jiangmiao/auto-pairs'
	Plug 'pechorin/any-jump.vim'
	Plug 'tpope/vim-fugitive'
    Plug 'vimwiki/vimwiki'
	Plug 'github/copilot.vim' " Copilot
    Plug 'airblade/vim-gitgutter'               " show changes in signcolumn
    Plug 'alvan/vim-closetag'                   " autoclose html esq tags
	Plug 'xolox/vim-misc'
	Plug 'xolox/vim-session' "Sessions

	" Theming
	Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plug 'morhetz/gruvbox'

	set encoding=UTF-8

	call plug#end()

" }

let mapleader = "\\"

" File Tree {
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"
	let NERDTreeQuitOnOpen=1
" }

" Fzf {
	nnoremap <silent> <C-p> :Files<CR>
	nnoremap <silent> <C-g> :GFiles<CR>
	nnoremap <silent> <C-o> :Buffers<CR>
" }

" Toggle Tagbar
nmap <C-d> :TagbarToggle<CR>

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

" General Remaps
:noremap <PageUp> {
:noremap <PageDown> }

" Command remappings
command! -nargs=0 W :w
command! -nargs=0 Q :q
command! -nargs=0 T :tabnew

" Vimwiki
let g:vimwiki_list = [{'path': '~/Markdown/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Copilot
let g:copilot_filetypes = { '*': v:false}

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Vim-Session {
  let g:session_autosave = 'yes'                " auto save session periodically
  let g:session_autoload = 'no'
" }
