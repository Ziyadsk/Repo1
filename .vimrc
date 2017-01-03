"the best .vimrc config ever :) "
"*************************************************************************************"
let base16colorspace=256  " Access colors present in 256 colorspace
"color stuff to support leflow"
"activate line numbers" 
:set nu
"set also relative numebers"
:set relativenumber
"highlight the search"
set hlsearch
"""experimental gui colors stuff
""set termguicolor 
""setting the background to dark "
set background=dark
"set ignore case 

set ic 
"let g:quantum_black = 1
"something about the termguicolor
"if has("termguicolors")
""		    set termguicolors
"endif
"settings for the GUI
set guioptions-=r
set guioptions-=l
"Choosing the colorscheme"
"colorscheme gruvbox
"quantum 
"vimbrant
"luna-term
"pride
"lucius 
"Tomorrow-Night-Eighties  
"desertEx 

"setting cuandrsor  line highlight"
"color of search highlighting(bg)
hi Search cterm=NONE ctermfg=White  ctermbg=73

"setting the fonts 

set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-bold\ 11

"set inc search (better hilighting of the s result)"
set incsearch
" Space to toggle folds.
"nnoremap <Space> za
vnoremap <Space> za
"set buffers to hide without prompting (more relax)
set hidden 
"active mouse usage"
set mouse=a

"nice menu to spell stuff"
set wildmenu
"weird stuff just to test : make invisible caracters visible "
"*"*"*"*"*"set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"wraps and stuff (uniC caracter) 
set showbreak=↪
"set indentation
set tabstop=4
set smartindent 
set expandtab
set autoindent  
set shiftwidth=4

"having a window tilte"
set title
" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

"************************"MAPPING  or giving button some functions to do :"
"1) -- first section about leader KEY " 

let mapleader=","

map <leader>s :w<CR>
map <leader>q :wq <CR>
map <C-space>:set paste i <S-insert><esc>:set nopaste 
map <leader>t :TagbarToggle <CR>
map <leader>v :source % <CR>
map <leader>u :UndotreeToggle <CR>
map <leader>a :NERDTreeToggle <CR>
nmap <leader>, :CtrlPBuffer<CR>
nmap <C-t> :tabnew <CR>
nmap <C-c> :
"2)other mapping 

 nnoremap <C-j> :lnext<CR>
 nnoremap <C-k> :lprevious<CR> 
 nmap <C-a> :NERDTreeToggle <CR>
 nnoremap <cr> :noh <esc>
 nmap S i<CR> <esc>

""OTHER MMAPPING !"
 nmap <C-h> :bp <CR>
 map <F2> :tabnew<CR>
 nmap <C-l> :bn <CR>
map <F5> :tabnext <F5>
map <F6> :tabprev <F6>
"Mapping to Magic mode auto 
 nnoremap / /\v
 vnoremap / /\v
 nmap <S-up> <C-W>k
 nmap <S-down> <C-W>j
 nmap <S-right> <C-W><right>
 nmap <S-left> <C-W><left>
 nmap <tab> :tabnext <CR>
 nmap <S-tab> :tabp <CR>
 "nnoremap <S-up> ddkP
 nnoremap <S-down> ddjp
" inoremap <S-right> <ESC>daWelpi 

"NERDtre 

let g:NERDTreeDirArrowExpandable = '•'
""'►'
let g:NERDTreeDirArrowCollapsible ='↪'      
""'▼'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'.   a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow','#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', '#00FF00', '#fff')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', '#10BBFF', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', '#ff0000', '#151515')

call NERDTreeHighlightFile('js', 'yellow', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

:hi Directory guifg=#ff0000 ctermfg=73

"Set to auto read when a file is changed from the outside"
set autoread

"set comand bar height "
set cmdheight=1

"highlight the match caracteres"
set showmatch 

"do not make BACKUP ; just chill with git and stuff "
:set nobackup
:set noswapfile

"formmating the statusline"
:set laststatus=2
"commented for later ==> "set statusline=\ %{}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
let g:airline_powerline_fonts = 1


"""" (**********VIM PLUG SECION**************)chi men la dose mavet gbal vhemtou apropos de vim-plug "
call plug#begin()
"Plug 'https://github.com/Rip-Rip/clang_complete'
Plug 'https://github.com/edkolev/promptline.vim'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim'
Plug 'https://github.com/jelera/vim-javascript-syntax'
Plug 'https://github.com/hail2u/vim-css3-syntax'
""Chi Sure and amazing ! 
"""exprimental
Plug 'othree/html5.vim'

"""trusted And Approved Plugin s==== :) "
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'https://github.com/mbbill/undotree', { 'on' : 'UndotreeToggle'}
Plug 'vim-scripts/colorizer'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'syntastic'
Plug 'honza/vim-snippets'
Plug 'https://github.com/rstacruz/sparkup'
Plug 'https://github.com/Shougo/neocomplete.vim' "The best completion ever !
Plug 'https://github.com/Shougo/neosnippet.vim' "snippets w/ neocomplete 
Plug 'https://github.com/Shougo/neosnippet-snippets' "repo of snips 
Plug 'godlygeek/tabular'
"Plug 'itspriddle/vim-jquery'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/edkolev/tmuxline.vim'
"Plug 'https://github.com/wookiehangover/jshint.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/justinmk/vim-syntax-extra'
call plug#end() 


"neoComp 
let g:neocomplete#enable_at_startup = 1

let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#auto_completion_start_length=2
" AutoComplPop like behavio
let g:neocomplete#enable_auto_select = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" <TAB>: completion.i


"imap <expr><tab>  pumvisible() ? "\<CR>" : "<CR>"
"imap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" SuperTab like snippets behavior.
imap <expr><tab>
            \ pumvisible() ? "<CR><tab>" : 
            \ neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

smap <expr><tab> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

"set the enconding 
set encoding=utf8

"enables vim_airline to have upper tab_bar 

let g:airline#extensions#tabline#enabled = 1 
"youCompleteMe Var"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


let g:neocomplete#enable_auto_close_preview = 1 

"close preview 	after completion : 
let g:ycm_autoclose_preview_window_after_completion = 1
"minimum of caracters to trigger completion . 

"stuff to work with undotree 

if has("persistent_undo")	   
    set undodir=~/.undodir/

    set undofile
endif 
"for conceal markers 

if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
"
"tryng the omnfunc stuff 
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set completefunc=syntaxcomplete#Complete


"""""
"let g:tabgar_ctags_bin='/Users/Ziyad/Downloads/ctags58/'

"let g:clang_library_path='/Users/Ziyad/.vim/plugged/clang_complete/plugin/clang/'

"set tag=/usr/local/Cellar/ctags/5.8_1/share/man/man1/ctags.1

set tags=~/Downloads/ctags58/

"" Command mode mappings.

"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>

"""
" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null


" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

""set cursorline 

set t_Co=256

let g:tmuxline_preset = 'tmux' 

let g:promptline_preset = {
            \'a'    : [ '$(hostname)' ],
            \'b'    : [ '$(whoami)' ],
            \'c'    : [ '$(pwd)' ],
            \'options': {
            \'left_sections' : [ 'b', 'a' ],
            \'right_sections' : [ 'c' ],
            \'left_only_sections' : [ 'b', 'a', 'c' ]}}


""syntastic Settigs 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3


"multiple cursor settings 
"
let g:multi_cursor_next_key='<C-Y>'
let g:multi_cursor_prev_key='<C-,>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


"tips for solarized 
let g:solarized_termcolors=256

if has('gui_running')
    colorscheme material-theme
    "solarized8_light_low
else

    colorscheme vimbrant

    "luna-term
endif

