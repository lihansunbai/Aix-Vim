"                         YiJun Linux GVim dotfile
"
"                                2015.7.18

" Set Linux Debian Desktop
runtime! debian.vim

" Not complete with Vi Mode
set nocompatible
set regexpengine=1
set history=8888

" @Replace <leader> key map to <space>
let mapleader=" "
let g:deoplete#enable_at_startup = 1

" ========================= Vundle Plugin Manager =========================

filetype off
" Vundle Config Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" # Plugins Beginning #
" @ Plugin --- [ Base Require Lib & Prefix ]
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'romainl/vim-qf'
Plugin 'mattn/webapi-vim'
Plugin 'bruno-/vim-alt-mappings'

" @ Plugin --- [ File Buffer Manager ]
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ap/vim-buftabline'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yegappan/mru'
Plugin 'danro/rename.vim'

" @ Plugin --- [ Code Cheacker Viewer ] 
Plugin 'simnalamburt/vim-mundo'
Plugin 'majutsushi/tagbar'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'justinmk/vim-sneak'
"Plugin 'goldfeld/vim-seek'
Plugin 'haya14busa/incsearch.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'

" @ Plugin --- [ Code Sreach ]
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/limelight.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ompugao/ctrlp-locate'
Plugin 'JazzCore/ctrlp-cmatcher'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'JazzCore/neocomplcache-ultisnips'

" @ Plugin --- [ Code Complete Unity ]
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/livestyle-vim'
Plugin 'Raimondi/delimitMate'

" @ Plugin --- [ Geeks Plugin ]
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'
Plugin 'bruno-/vim-man'
Plugin 'dhruvasagar/vim-table-mode'

" @ Plugin --- [ Syntax ] 
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'chrisbra/csv.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'plasticboy/vim-markdown'
"Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 'dimasg/vim-mark'

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J'
Plugin 'DemonCloud/vim-aixinde'
"Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'

" ---- Plugin List Complete ----

call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on

" @ COLOR Themes
" If you are not having them. You Search in Google and download them

" Set Color Themes
set background=dark
colorscheme J
"colorscheme monochrome
"colorscheme seoul256
"colorscheme distinguished
"colorscheme jellybeans
"colorscheme hybrid
"colorscheme solarized
"colorscheme gruvbox
"colorscheme darktango
"colorscheme hybrid-light
"colorscheme badwolf
"colorscheme mirodark
"colorscheme codeschool

" ========================= Vundle Plugin Setup End =========================



" ========================= Plugin Config Start =========================

" AirLine Settings
" alrLine && PowerLine Config
"let g:Powerline_symbols = 'fancy'
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'compatible'
"let g:airline_theme = 'solarized'

" fzf Plugin config
set rtp+=~/.fzf

" TagBar Config
" Just configure and [make] ctags file
let g:tagbar_ctags_bin = "/usr/bin/ctags"
let g:tagbar_iconchars = ['+', '-']
" for coffeeScript
let g:tagbar_type_coffee = {
			\ 'ctagstype' : 'coffee',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 'm:methods',
			\ 'f:functions',
			\ 'v:variables',
			\ 'f:fields',
			\ ]
			\ }
let g:tagbar_type_css = {
			\ 'ctagstype' : 'Css',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities'
			\ ]
			\ }

" Syntastic Config
set statusline+=%#f1#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
" set Syntastic Cheacker engine
" example JavaScript use JSHint [ NodeJS ]
let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_java_checkers       = ['java', 'jsp']
"let g:syntastic_c_checkers          = ['c', 'h']
"let g:syntastic_cpp_checkers        = ['cpp']

"-------------------- YouCompleteMe -------------------
" let g:ycm_global_ycm_extra_conf = ".vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_use_ultisnips_completer = 1
" let g:ycm_cache_omnifunc = 1
" let g:ycm_disable_for_files_larger_than_kb = 10000
" let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>']
" let g:ycm_filetype_blacklist = {
" 			\ 'tagbar' : 1,
" 			\ 'qf' : 1,
" 			\ 'notes' : 1,
" 			\ 'markdown' : 1,
" 			\ 'unite' : 1,
" 			\ 'text' : 1,
" 			\ 'vimwiki' : 1,
" 			\ 'pandoc' : 1,
" 			\ 'infolog' : 1,
" 			\ 'mail' : 1,
" 			\ 'mundo': 1,
" 			\ 'fzf': 1,
" 			\ 'ctrlp' : 1
" 			\}

" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'

" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"-------------------- NeoComplete ---------------------
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 1
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 2
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
" 			\ 'default' : '',
" 			\ 'vimshell' : $VIMRUNTIME.'/vimfile/bundle/vimshell.vim/.vimshell_hist',
" 			\ 'scheme' : $VIMRUNTIME.'/vimfile/bundle/gosh/.gosh_completions'
" 			\ }

" Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
" 	let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
" 	"return neocomplete#close_popup() . "\<CR>"
" 	" For no inserting <CR> key.
" 	return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction

"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
let g:neocomplete#enable_insert_char_pre = 1
let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType vim setlocal omnifunc=vimcomplete#CompleteVim

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
""	let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" Noconflict NeoComplete With Vim Multiple Cursors
"function! Multiple_cursors_before()
"	exe 'NeoCompleteLock'
"endfunction
"
"function! Multiple_cursors_after()
"	exe 'NeoCompleteUnlock'
"endfunction

" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger     = "<Tab>"
let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><Tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<S-Tab>'
let g:user_emmet_settings = {
			\ 'php'     : {
			\ 'extends' : 'html',
			\ 'filters' : 'c',
			\ },
			\ 'xml'     : {
			\ 'extends' : 'html',
			\ },
			\ 'haml'    : {
			\ 'extends' : 'html',
			\ },
			\}

" C++ Syntax HighLight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" GitGutter Setting
let g:gitgutter_sign_column_always = 0
let g:gitgutter_max_signs = 99999

" c.vim Building Config for C/C++ Vim
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen = 'yes'
"let  g:C_LocalTemplateFile = $VIM.'/vimfiles/c-support/templates/Templates'

" Vimshell Settings
let g:vimshell_prompt = "AIX>> "
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" Unite Settings
let g:unite_prompt=">>"
let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable      = 1
let g:unite_source_rec_async_command        = 1
let g:unite_source_grep_command             = 'ag'
let g:unite_source_grep_default_opts        = '--nocolor --nogroup --column'
let g:unite_source_grep_recursive_opt       = ''
let g:unite_source_history_yank_enable      = 1
let g:unite_split_rule                      = "botright"
let g:unite_update_time                     = 100
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
			\ 'ignore_pattern', join([
			\ '\.git/',
			\ 'git5/.*/review/',
			\ 'google/obj/',
			\ 'tmp/',
			\ '.sass-cache',
			\ 'node_modules/',
			\ 'bower_components/',
			\ 'dist/',
			\ '.git5_specs/',
			\ '.pyc',
			\ ], '\|'))
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" VimFiler Settings
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_ignore_pattern = '^\%(.git\|.idea\|.DS_Store\)$'
call vimfiler#set_execute_file('txt', 'notepad')
call vimfiler#set_execute_file('c', ['gvim', 'notepad'])
let g:vimfiler_as_default_explorer = 1
" Enable file operation commands.
" Edit file by tabedit.
call vimfiler#custom#profile('default', 'context', {
			\ 'safe' : 0,
			\ 'edit_action' : 'tabopen',
			\ })

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '-'
let g:vimfiler_tree_closed_icon = '>'
let g:vimfiler_marked_file_icon = '*'
" Use trashbox.
" Windows only and require latest vimproc.
let g:unite_kind_file_use_trashbox = 1

" CtrlP Settings
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git

let g:ctrlp_map = '<C-\>'
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
			\ --ignore .git
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ --ignore .idea
			\ --ignore "**/*.pyc"
			\ -g ""'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}

" Ack Settings
if executable('ag')
	let g:ackprg = "ag --nocolor --nogroup --column"
elseif executable('ack-grep')
	let g:ackprg = "ack-grep --nocolor --nogroup --column"
elseif executable('ack')
	let g:ackprg = "ack --nocolor --nogroup --column"
endif

" Multip Cursor
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Sneak Vim
let g:sneak#streak = 1

" Vim incsearch
let g:vim_search_pulse_disable_auto_mappings = 1
let g:incsearch#auto_nohlsearch = 1

" Mark config
let g:mwDefaultHighlightingPalette = 'maximum'
let g:mwAutoLoadMarks = 1

" Vim-EasyTags 
"let g:easytags_cmd = '/usr/bin/ctags'
let g:easytags_async = 1
set tags=~/.vim/tags;

" DevIcons Config
" ColorFul NERDTree
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade'        , '202' , '232' , '#F27221' , '#080808')
call NERDTreeHighlightFile('ini'         , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('md'          , '238' , '232' , '#444444' , '#080808')
call NERDTreeHighlightFile('yml'         , '241' , '232' , '#606060' , '#080808')
call NERDTreeHighlightFile('config'      , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('conf'        , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('json'        , '63'  , '232' , '#255899' , '#080808')
call NERDTreeHighlightFile('html'        , '202' , '232' , '#F27221' , '#080808')
call NERDTreeHighlightFile('styl'        , '144' , '232' , '#C0C280' , '#080808')
call NERDTreeHighlightFile('css'         , '144' , '232' , '#C0C280' , '#080808')
call NERDTreeHighlightFile('coffee'      , '88'  , '232' , '#870000' , '#080808')
call NERDTreeHighlightFile('js'          , '88'  , '232' , '#870000' , '#080808')
call NERDTreeHighlightFile('php'         , '63'  , '232' , '#255899' , '#080808')
call NERDTreeHighlightFile('ds_store'    , '23'  , '232' , '#005F5F' , '#080808')
call NERDTreeHighlightFile('gitconfig'   , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('gitignore'   , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('bashrc'      , '15'  , '232' , '#FFFFFF' , '#080808')
call NERDTreeHighlightFile('bashprofile' , '15'  , '232' , '#FFFFFF' , '#080808')

let g:NERDTreeDirArrows=0
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1

" ========================= Plugin Config End =========================

" ========================= Normal Setting Start =========================

" @ Source vim
" Source AixLine flagShip for my ::BOOM Statusline;
source $HOME/.aixline.vim
"source $VIMRUNTIME/mswin.vim

"Set windows pos and resize
set lines=42
set columns=118

" ## Make its Gvim Like Windows behave ##
" So you can use
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
"behave mswin

" Format
set nu
set noexpandtab
set copyindent
set preserveindent
set tabstop=2 "4
set shiftwidth=2 "4
set softtabstop=0 "4
set autowrite
set display=lastline

" Encoding setting
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8

" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set fileignorecase
set showcmd
set whichwrap+=<,>,h,l

" Omni Complete Setting
set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone,longest
set completeopt-=preview
set switchbuf=useopen,usetab
set shortmess=a

" No back up files
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set cursorline
set winaltkeys=no

" Advance config
set magic
set lazyredraw
set ttyfast
set hidden
"set autochdir
set autoread
"set showmatch
set laststatus=2
set cmdheight=1

" No surround sound
set noerrorbells
set novisualbell
set t_vb=

" Set Fold config
" set foldmethod=syntax
set foldenable

" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac

" set Undo file
set undofile
set undodir=~/.vim/undo
set viminfo+=!

" Diff GUI Vim with NVim
" Set No Top Menu and Scroll
if has("gui_running")
	set guioptions-=e
	set guioptions-=m
	set guioptions-=T
	set guioptions-=L
	set guioptions-=r
	set guioptions-=B
	set guioptions-=0
	set go=
	set guitablabel=
	set paste
	set mousemodel=popup_setpos
	set mouse-=a
	"set guitablabel=%M\ %t

	" Fonts Settings
	"set guifont=ProfontWindows\ 9
	"set guifont=IBM\ 3270\ Narrow\ Medium\ 10
	set guifont=Aix\ 9
else
	set t_Co=256
	set showtabline=2
	set noimd
	set ttimeoutlen=0
endif

if len($TMUX) > 0
	" set screen title to vim $PWD folder name - format 'v:folder'
	set titlestring=v:%(%{fnamemodify(expand(\"$PWD\"),\":t\")}%)
	set t_ts=k
	set t_fs=\
	set title
endif

set spelllang=en_us                      " spelling options
set spellfile=~/.vim/spell/en.utf-8.add  " spell files added with `zg`
set dictionary+=/usr/share/dict/words

" setting the tabs like that
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 
"set list listchars=tab:-\ ,trail:\ 
set list listchars=tab:-\ ,extends:>,precedes:<

" ========================= Normal Setting End =========================

" ========================= KeyFire Setting Start =========================

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TableModeToggle<CR>
nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>
nnoremap <F5> :TagbarToggle<CR>
nnoremap <F6> :SyntasticToggleMode <CR>
nnoremap <F7> :GundoToggle<CR>
nnoremap <F8> mzgg=G`z
nnoremap <F9> ggVG:RetabIndent<CR>

" Normal Key Map
nnoremap U :redo<CR>
nnoremap Q :q!<CR>
nnoremap W :w!<CR>

" Window VertSplit switcher
nnoremap <leader>h  <C-w>h
nnoremap <leader>hh <C-w>h
nnoremap <leader>j  <C-w>j
nnoremap <leader>jj <C-w>j
nnoremap <leader>k  <C-w>k
nnoremap <leader>kk <C-w>k
nnoremap <leader>l  <C-w>l
nnoremap <leader>ll <C-w>l

" Set as toggle foldcomment
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
nnoremap zr zR
" Fast searcher
nnoremap z, :FZF --no-mouse .<CR>

nnoremap ' `
nnoremap ` '
nnoremap <silent> zj o<ESC>k
nnoremap <silent> zk O<ESC>j

" Format Jump
nnoremap <silent> g; g;zz
nnoremap <silent> g: g:zz

" Smooth Scroll the terminal
nnoremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Cursor Moving
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-h> <Left>
cnoremap <A-l> <Right>

cnoremap <M-j> <Down>
cnoremap <M-k> <Up>
cnoremap <M-h> <Left>
cnoremap <M-l> <Right>

" Like Emacs
inoremap <C-e> <End>
inoremap <C-b> <Home>

inoremap <M-e> <End>
inoremap <M-b> <Home>

" Buftabline Config
nnoremap <A-j> :bnext<CR>
nnoremap <A-k> :bprev<CR>
nnoremap <A-l> :bnext<CR>
nnoremap <A-h> :bprev<CR>
nnoremap <A-x> :bdelete<CR>
nnoremap <A-w> :bwipeout<CR>

nnoremap <M-j> :bnext<CR>
nnoremap <M-k> :bprev<CR>
nnoremap <M-l> :bnext<CR>
nnoremap <M-h> :bprev<CR>
nnoremap <M-x> :bdelete<CR>
nnoremap <M-w> :bwipeout<CR>

" Check Vim Syntax name Fn
nnoremap <leader>yi :call <SID>SynStack()<CR>
nnoremap <leader>w  :w!<CR>
nnoremap <leader>q  :q<CR>
nnoremap <leader>hs :MRU<CR>

" Command
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cx :%s///gm
nnoremap <leader>cf :CtrlPFunky<CR>
nnoremap <Leader>cs :CtrlPLocate<CR>

noremap <silent> <C-v> <ESC>"+gpi
" repeat Prev Command
nnoremap <leader>. @:
vnoremap <leader>. :normal .<CR>

" Unite file configure
" Ag searcher
nnoremap <leader>uf :Unite -buffer-name=files -start-insert file_rec/async:!<CR>
nnoremap <leader>ug :Unite grep:.<CR>
nnoremap <leader>ub :Unite file buffer<CR>
nnoremap <leader>vf :VimFiler<CR>

" Split faster
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>
" End Split

" first to copy files path
" copy path
nnoremap <leader>p "+gp
vnoremap <Leader>p "+p
vnoremap <leader>y "+y
vnoremap <Leader>d "+d
nnoremap <leader>cp :let @+=expand("%:p")<CR>:echo "Copied current file
			\ path '".expand("%:p")."' to clipboard"<CR>
inoremap <C-v> <ESC>"+gpi

" Vundle keyfire
nnoremap <leader>vi :PluginInstall<CR>
nnoremap <leader>vu :PluginUpdate<CR>

" Tabluer Format
vnoremap <leader>t :Tabularize/
vnoremap <leader>t= :Tabularize/=<CR>
vnoremap <leader>t, :Tabularize/,<CR>
vnoremap <leader>t: :Tabularize/:<CR>
vnoremap <leader>t; :Tabularize/;<CR>

" <leader>s: Spell checking shortcuts
" fold enable settings
nnoremap <leader>ss :setlocal spell!<CR>
nnoremap <leader>sj ]szz
nnoremap <leader>sk [szz
nnoremap <leader>sa zg]szz
nnoremap <leader>sd 1z=
nnoremap <leader>sf z=
"Vim Shell Faster
nnoremap <leader>sh :VimShell<CR>

" Multi Cursor Find
vnoremap <leader>mf :MultipleCursorsFind 

" Multi Expand Region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" For Git fire
nnoremap <leader>gs : Gstatus<CR>
nnoremap <leader>gc : Gcommit
nnoremap <leader>gb : Gblame
nnoremap <leader>gv : Gitv<CR>
nnoremap <leader>gr : Gremove
nnoremap <leader>gl : Glog<CR>
nnoremap <leader>gt : Git
nnoremap <leader>gp : Git push origin master<CR>
nnoremap <leader>gu : Git pull -u<CR>

" For SVN fire
nnoremap <leader>sc :!svn ci -m ""<CR>
nnoremap <leader>su :!svn up<CR>
nnoremap <leader>st :!svn st<CR>

" Editor dotfile
nnoremap <leader>en :e! ~/.nvimrc<CR>
nnoremap <leader>ev :e! ~/.vimrc<CR>

" Incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n <Plug>(incsearch-nohl-n)zzzv
map N <Plug>(incsearch-nohl-N)zzzv
"map * <Plug>(incsearch-nohl-*)zzzv
"map # <Plug>(incsearch-nohl-#)zzzv
map g* <Plug>(incsearch-nohl-g*)zzzv
map g# <Plug>(incsearch-nohl-g#)zzzv

" Mark vim Plugin
nnoremap <Leader>M <Plug>MarkToggle
nnoremap <Leader>N <Plug>MarkAllClear

"Sneak
"replace 'f' with 1-char Sneak
"nmap f <Plug>Sneak_f
"nmap F <Plug>Sneak_F
"xmap f <Plug>Sneak_f
"xmap F <Plug>Sneak_F
"omap f <Plug>Sneak_f
"omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
"nmap t <Plug>Sneak_t
"nmap T <Plug>Sneak_T
"xmap t <Plug>Sneak_t
"xmap T <Plug>Sneak_T
"omap t <Plug>Sneak_t
"omap T <Plug>Sneak_T

" Lookup HighLight Syntax Define
function! <SID>SynStack()
	echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
	let spccol = repeat(' ', a:cols)
	let result = substitute(a:indent, spccol, '\t', 'g')
	let result = substitute(result, ' \+\ze\t', '', 'g')
	if a:what == 1
		let result = substitute(result, '\t', spccol, 'g')
	endif
	return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
	let savepos = getpos('.')
	let cols = empty(a:cols) ? &tabstop : a:cols
	execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
	call histdel('search', -1)
	call setpos('.', savepos)
endfunction

" Space2Tab
" Tab2Space
" RetabIndent
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)

" ========================= KeyFire Setting End =========================

" ========================= GUI Setting =========================

map <silent> <F1> :if &guioptions =~# 'T' <Bar>
			\set guioptions-=T <Bar>
			\set guioptions-=m <bar>
			\else <Bar>
			\set guioptions+=T <Bar>
			\set guioptions+=m <Bar>
			\endif<CR>

" ========================= GUI End =========================
" End vimrc

