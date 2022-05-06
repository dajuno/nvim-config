if &compatible
  set nocompatible
endif

filetype plugin indent on

" should be set before loading polyglot
" let g:polyglot_disabled = ['yaml', 'latex']  " disable vim-polyglot

call plug#begin('~/.config/nvim/plugged')

    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " use neovim core language server providers instead of CoC
    Plug 'neovim/nvim-lspconfig'
    Plug 'jose-elias-alvarez/null-ls.nvim'

    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'folke/trouble.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    " completion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-omni'
    Plug 'hrsh7th/nvim-cmp'

    " snippets
    " Plug 'hrsh7th/cmp-vsnip'
    " Plug 'hrsh7th/vim-vsnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'rafamadriz/friendly-snippets'
    " Plug 'iurimateus/luasnip-latex-snippets.nvim'

    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets' -- snipmate type snippets
    " Plug 'quangnguyen30192/cmp-nvim-ultisnips'

    " statusline
    Plug 'nvim-lualine/lualine.nvim'
    " bufferline
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

    " Plug 'neomake/neomake'
    " Plug 'dense-analysis/ale'  use 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'sheerun/vim-polyglot'

    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
    " Plug 'blindFS/vim-taskwarrior'

    " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    " Plug 'junegunn/fzf.vim'

    " distraction free writing
    Plug 'junegunn/goyo.vim'
    Plug 'reedes/vim-pencil'
    Plug 'reedes/vim-colors-pencil'

    " Python plugins
    " Plug 'vim-python/python-syntax' " until polyglot uses an updated package 
    "                                 " dont forget to change g:polyglot_disabled !!!
    " use this because treesitter python indenting is broken
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'psf/black', { 'branch': 'stable' }
    " Plug 'jeetsukumaran/vim-indentwise'

    " YAML Syntax (polyglot doesnt let me set sw=2 ts=2)
    Plug 'stephpy/vim-yaml'

    " rst note taking plugin
    Plug 'gu-fan/riv.vim'
    " Plug 'gu-fan/InstantRst'

    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    " Plug 'tpope/vim-obsession'

    " Plug 'Yggdroot/indentLine'
    Plug 'ludovicchabant/vim-gutentags'

    Plug 'lervag/vimtex'

    Plug 'majutsushi/tagbar'
    " Plug 'scrooloose/nerdcommenter'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'edkolev/tmuxline.vim'

    " Plug 'chriskempson/base16-vim'
    Plug 'RRethy/nvim-base16'
    Plug 'sainnhe/sonokai'

    Plug 'jeffkreeftmeijer/vim-numbertoggle' 

    Plug 'tmhedberg/SimpylFold'
    Plug 'Konfekt/FastFold'
    " Plug 'bfredl/nvim-ipy'
    " Plug 'ivanov/vim-ipython'

    " Plug 'vim-pandoc/vim-pandoc'
    " Plug 'vim-pandoc/vim-pandoc-syntax'

    " Plug 'jpalardy/vim-slime'
    " Plug 'xolox/vim-colorscheme-switcher'
    " Plug 'xolox/vim-misc'  " dependency of colorscheme-switcher
call plug#end()


" set statusline+=%#ErrorMsg#%{neomake#statusline#LoclistStatus()}

"let mapleader = '-'
let mapleader = ';'
 
" hard wrap
set formatoptions=t
set textwidth=88
set wrapmargin=0
set colorcolumn=88

" tabulator
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

" appearance
set number
set showmatch
set cursorline
set background=dark

" show 3 lines before first line when scrolling
set scrolloff=3

set mouse=a

set undofile                " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" COLORSCHEMES
" fix leaking terminal background color in urxvt
" autocmd VimEnter * redraw!
set termguicolors

" colorscheme base16-default-dark
" colorscheme base16-schemer-dark
" colorscheme base16-ia-dark
" colorscheme base16-edge-dark
colorscheme base16-espresso

" function! SwitchLightDark()
"     if g:colors_name == 'flattened_light'
"         colorscheme flattened_dark
"         redraw
"     elseif g:colors_name == 'flattened_dark'
"         colorscheme flattened_light
"         redraw
"     endif
" endfunction

" enable conceal syntax elements for pandoc
" hi! link Conceal Special

" MAPPINGS
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
nnoremap <space> za
" nnoremap <Leader><ESC> :syntax sync minlines=50<CR>
nnoremap <Leader><ESC> :syntax sync fromstart<CR>

nnoremap <Leader>q :copen<CR>

function ToggleColors()
    if (g:colors_name == "base16-default-dark")
        colorscheme base16-gruvbox-light-soft
        set background=light
    else
        colorscheme base16-default-dark
        set background=dark
    endif
endfunction

function TogglePaste()
	" because set pastetoggle=<key> does not work with multi key combinations
	if (&paste == 0)
		set paste
        echo ":set paste"
	else
		set nopaste
        echo ":set nopaste"
	endif
endfunction

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:goyo_width = 81
let g:black_linelength = 80

" nnoremap <expr> <F6> g:colors_name == "base16-default-dark" ? ":colo base16-gruvbox-light-soft\<CR>" : ":colo base16-default-dark\<CR>" :Goyo<CR>
nnoremap <F6> :call ToggleColors()<CR>:Goyo<CR>:PencilToggle<CR>
nnoremap <Leader>p :call TogglePaste()<CR>

command InitVim edit ~/.config/nvim/init.vim

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" focus on new splits
set splitbelow
set splitright

" autocmds
au BufNewFile,BufRead *.geo set filetype=gmsh
au BufNewFile,BufRead *.tikz set filetype=tex
au BufNewFile,BufRead *.edp set filetype=freefem

" au BufRead,BufNewFile *.rst setlocal spell

" possibly slow, try to avoid syntax HL problems. .....
" autocmd BufEnter * :syntax sync fromstart
autocmd BufEnter * :syntax sync minlines=10

""" PLUGINS
" fzf                                                                          
" nnoremap <Leader>f :Files<cr>                                                  
" nnoremap <Leader>l :Buffers<cr>                                                
" use ripgrep as grepprg
set grepprg=rg\ --vimgrep

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" set completeopt=menu,menuone,noselect,preview
set completeopt=menu,menuone,noselect

" lua scripts  ----------------------------------------------->
" neovim LSP settings
" lua require('lspconfig').jedi_language_server.setup{}
" lua require('lspconfig').pylsp.setup{}
lua require("completion")
lua require("nullls")
lua require("lsp")

lua require("treesitter")

lua require("trouble").setup { }
lua require("lualine").setup()
lua require("bufferline").setup{}
" lua scripts  <-----------------------------------------------


" " Airline
" let g:airline#extensions#tmuxline#enabled = 1
" let g:airline#extensions#coc#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#excludes = ['LaTeX TOC', '__Tagbar__']
" let g:airline_exclude_filenames = ['LaTeX TOC']
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#buffer_min_count = 2
" let g:airline#extensions#tabline#buffers_label = ''
" let g:airline#extensions#whitespace#show_message = 0
" set gfn=Liberation\ Mono\ for\ Powerline\ 10
" let g:airline_powerline_fonts = 1
" " let g:airline_theme = 'bubblegum' "'jellybeans'
" " let g:airline_theme = 'apprentice' "'jellybeans'
" " let g:airline_theme = 'base16_default'
" " let g:airline_theme = 'base16_grayscale'
" let g:airline_theme = 'monochrome'
" let g:airline_mode_map = {
"   \ '__' : '-',
"   \ 'n'  : 'N',
"   \ 'i'  : 'I',
"   \ 'R'  : 'R',
"   \ 'c'  : 'C',
"   \ 'v'  : 'V',
"   \ 'V'  : 'V',
"   \ '' : 'V',
"   \ 's'  : 'S',
"   \ 'S'  : 'S',
"   \ '' : 'S',
"   \ }

" let g:airline_section_z = airline#section#create('%p%% %{g:airline_symbols.linenr}%#__accent_bold#%3l:%#__restore__#%2v') 
" let g:airline_skip_empty_sections = 1
" " let g:airline_section_warning = airline#section#create('%{neomake#statusline#LoclistStatus()}')

" TagBar
nmap <F8> :TagbarToggle<CR>

" " Unite.vim
" call unite#filters#sorter_default#use(['sorter_rank'])
" nnoremap <leader>f :<C-u>Unite -start-insert file<cr>
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <leader>r :<C-u>Unite -start-insert file_rec/neovim:!<cr>
" nnoremap <leader>l :Unite -quick-match buffer<cr>

"" vim commentary gmsh
autocmd FileType gmsh setlocal commentstring=//\ %s
vmap gi <ESC>:'<,'>norm gcc<cr>

" SimpylFold
" let g:SimpylFold_docstring_preview = 1
"autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
"autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<


" Slime
" let g:slime_target = "tmux"
" let g:slime_python_ipython = 1
let python_highlight_all=1
" let g:slime_paste_file = "$HOME/.slime_paste"
" let g:slime_no_mappings = 1
" xmap <leader>s <Plug>SlimeRegionSend
" nmap <leader>s <Plug>SlimeMotionSend
" nmap <leader>ss <Plug>SlimeLineSend
" nmap <leader>sc <Plug>SlimeConfig

" FastFold
let g:tex_fold_enabled=1

" VimTeX
" let g:tex_flavor = 'latex'  " vim detects tex
let g:tex_comment_nospell = 1  " disable spell checking in comments (standard tex plugin)
let g:vimtex_syntax_nospell_comments = 1  " disable spell checking in comments
let g:vimtex_enabled = 1
let g:vimtex_fold_enabled = 1
let g:vimtex_view_enabled = 1
let g:vimtex_view_method = 'zathura'  " -x nvr --remote-silent %f -c %l'
" let g:vimtex_latexmk_progname = 'nvr'
" let g:vimtex_compiler_progname = 'nvr'

" IndentLine
" let g:indentLine_char='▏'
" let g:indentLine_enabled=0


" tagbar for markdown/pandoc
" .ctags:
"--langdef=markdown
"--langmap=markdown:.md
"--regex-markdown=/^(#+)[ \t]+([^#]*)/\1 \2/h,header,Markdown Headers/
"--regex-markdown=/\[([^\[]+)\]\(([^\)]+)\)/\1/l,link,Markdown Links/
"--regex-markdown=/!\[\]\(.*[\/ ](.*\.[a-z]{3})\)/\1/i,image,Markdown Image/
let g:tagbar_type_pandoc = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
                \ 'h:headings',
                \ 'l:links',
                \ 'i:images'
            \ ],
    \ "sort" : 0
\ }
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : 'rst2ctags',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
    \ }
