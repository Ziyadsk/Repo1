"the best .vimrc config ever lol :) "
"*************************************************************************************"
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256

"setting the bgcolor 
set background=dark

"set the enconding 
set encoding=utf8

"always activate line numbers" 
:set nu

"also set relative numbers"
:set relativenumber

"highlight the search"
set hlsearch

"colors of search highlighting(bg & fg)
hi Search cterm=NONE ctermfg=White  ctermbg=73

"setting the background to dark "
set background=dark

"set ignore case 
set ic 

"set inc search (better hilighting of the s result)"
set incsearch


" Space to toggle folds.
"nnoremap <Space> za
"vnoremap <Space> za

"set buffers to hide without prompting (more chill)
set hidden 


"active mouse usage"
set mouse=a

"Activate wildmenu "
set wildmenu


"listchars :set list"
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"wraps and stuff (unic caracter) 
set showbreak=↪



"set indentation
set tabstop=4
set smartindent 
set expandtab
set autoindent  
set shiftwidth=4

"having a window tilte"
set title

"Sudo to write(when you want to change a Read-Only file ) 
cnoremap w!! w !sudo tee % >/dev/null

"Setting the colorscheme
if has('gui_running')
    colorscheme blackboard
    "material-theme
    "solarized8_light_low
    AirlineTheme base16_default
else

    colorscheme vimbrant 
    "vimbrant
    "luna-term

endif




"disable scrollbars in gvim/macvim 
set guioptions-=r
set guioptions-=l

"setting the gvim /macvim fonts 
set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-bold\ 10
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar




"************************"MAPPING  or giving button some functions to do :) "
"1) -- first section about leader KEY " 
let mapleader="," 

"save
map <leader>s :w<CR> 

"write and quit 
map <leader>q :wq <CR>  

"tagbar toggle
map <leader>t :TagbarToggle <CR>  

"source the current file
map <leader>v :source % <CR>

"undo tree toggle 
map <leader>u :UndotreeToggle <CR>

"NERDtree toggle
map <leader>a :NERDTreeToggle <CR>
 
"ctrlP plugin
nmap <leader>, :CtrlPBuffer<CR>



"2)other mapping 

"add new tab 
nmap <C-t> :tabnew <CR>

"enter command mode 
nmap <C-c> :

"Syntastic plugins (next & previous error) 
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprevious<CR> 

"toggle NERDtree
nmap <C-a> :NERDTreeToggle <CR>

"deactivate search highlight
nnoremap <cr> :noh <esc>

"return / next line
nmap S i<CR> <esc>

"previous buffer 
nmap <C-h> :bp <CR>

"next buffer
nmap <C-l> :bn <CR>

"Mapping to Magic mode auto 
 nnoremap / /\v
 vnoremap / /\v

"shifting between windows
nmap <S-up> <C-W>k
nmap <S-down> <C-W>j
nmap <S-right> <C-W><right>
nmap <S-left> <C-W><left>


"cycling tabs
nmap <tab> :tabnext <CR>
nmap <S-tab> :tabp <CR>


" Move visual block
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"Set to auto read when a file is changed from the outside"
set autoread

"set comand bar height "
set cmdheight=1

"highlight the match caracteres"
set showmatch 


"do not make BACKUP/swap" 
:set nobackup
:set noswapfile

"activate airline/Powerline fonts/icons
let g:airline_powerline_fonts = 1
set laststatus=2
"enables vim_airline to have the upper tab_bar 
let g:airline#extensions#tabline#enabled = 1 





"""" (**********VIM PLUG SECTION************** INCLUDING ALL MY PLUGINS) "

call plug#begin()
Plug 'https://github.com/Shougo/vimproc.vim'
Plug 'https://github.com/m2mdas/phpcomplete-extended'
Plug 'https://github.com/joonty/vdebug'
"Plug 'https://github.com/Rip-Rip/clang_complete'
Plug 'https://github.com/edkolev/promptline.vim'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim'
Plug 'https://github.com/jelera/vim-javascript-syntax'
Plug 'https://github.com/hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

"""trusted And Approved Plugin :) "
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'https://github.com/mhinz/vim-startify' 
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar' "show tags and functions/variables
Plug 'https://github.com/mbbill/undotree', { 'on' : 'UndotreeToggle'}
Plug 'vim-scripts/colorizer' " colrize hexadecimal color notation 
Plug 'https://github.com/tpope/vim-repeat' "repeat last commands
Plug 'syntastic' "syntax checker 
Plug 'honza/vim-snippets'
Plug 'https://github.com/rstacruz/sparkup'
Plug 'https://github.com/Shougo/neocomplete.vim' "The best completion ever !
Plug 'https://github.com/Shougo/neosnippet.vim' "snippets w/ neocomplete 
Plug 'https://github.com/Shougo/neosnippet-snippets' "repo of snips 
Plug 'godlygeek/tabular'
"Plug 'itspriddle/vim-jquery'
Plug 'bling/vim-airline' "airline status bar
Plug 'vim-airline/vim-airline-themes' "airline themes 
Plug 'https://github.com/edkolev/tmuxline.vim'
"Plug 'https://github.com/wookiehangover/jshint.vim'
Plug 'https://github.com/tpope/vim-commentary' "fast way to comment /uncomment
Plug 'https://github.com/terryma/vim-multiple-cursor' 
Plug 'https://github.com/justinmk/vim-syntax-extra'

call plug#end() 


"neocomplete settings  
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_close_preview = 1 
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#auto_completion_start_length=2
" AutoComplPop like behavio
let g:neocomplete#enable_auto_select = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1


" <TAB>: tab_completion for neocomplete

"imap <expr><tab>  pumvisible() ? "\<CR>" : "<CR>"
"imap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" SuperTab like snippets behavior.
imap <expr><tab>
            \ pumvisible() ? "<CR><tab>" : 
            \ neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

smap <expr><tab> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"



"youCompleteMe stuff, but i dont use it anymore
"youCompleteMe Var"
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"close preview 	after completion : 
"let g:ycm_autoclose_preview_window_after_completion = 1
"minimum of caracters to trigger completion . 



"undotree settings 

if has("persistent_undo")	   
    set undodir=~/.undodir/

    set undofile
endif 


"Enable conceal markers 

if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
"



"omnifunc completion

filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set completefunc=syntaxcomplete#Complete


"setting the tags folder
set tags=~/Downloads/ctags58/


""set tmux_preset for tmuxline
let g:tmuxline_preset = 'tmux' 


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

"NERDtree Plugin icons 

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


