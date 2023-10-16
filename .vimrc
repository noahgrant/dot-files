" my personal preference
set sts=2
set tabstop=2
set shiftwidth=2
set expandtab
set backupcopy=yes

" leave breathing room when zt or zb-ing
set scrolloff=3

" tell vim to use 256 colors
set t_Co=256

" listchars to be shown on :set list
set listchars=eol:$,tab:\\t

" pathogen for vim bundles
call pathogen#infect()

" add help directory
" :helptags ~/.vim/doc
call pathogen#helptags()

" set vim swap file directory
"set directory=~/.tmp

" map <C-T> :tabnew<CR>:VTreeExplore<CR>
imap jj <Esc>

" shift-alt-arrows - tab nav
map [1;10D :tabp<CR>
imap [1;10D <Esc>:tabp<CR>
map [1;10C :tabn<CR>
imap [1;10C <Esc>:tabn<CR>

" alt-arrows - window navigation
map [1;9A <C-W><Up>
imap [1;9A <C-O><Up>
map [1;9B <C-W><Down>
imap [1;9B <C-O><Down>
map [1;9C  <C-W><Right>
imap [1;9C <C-O><Right>
map [1;9D <C-W><Left>
imap [1;9D <C-O><Left>

" shift-arrows - buffer prev/next
map  [1;2D :bp<CR>
imap [1;2D <Esc>:bp<CR>
map  [1;2C :bn<CR>
imap [1;2C <Esc>:bn<CR>

" alt-q: closes window, deletes buffer
map œ :q<CR>
imap œ <Esc>:q<CR>
" alt-d: deletes buffer, keeps window
map ∂ :bp<bar>sp<bar>bn<bar>bd<CR>
imap ∂ <Esc>:bp<bar>sp<bar>bn<bar>bd<CR>

" get rid of ex mode
map Q <Nop>

map <Leader>n :NERDTreeToggle<CR>

" retain undo history when switching buffers
:set hidden

" enhanced tab completion
set wildmenu
set wildmode=longest,list,full

" I like highlighted search results
set hlsearch
" Use incremental searching
set incsearch

" Auto indent after a {
set autoindent
set smartindent

" set folds on indents
"set foldmethod=syntax

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Show line numbers by default
set number

" Repair wired terminal/vim settings
set backspace=indent,start,eol
" backspace deletes backward and wraps lines
set backspace=2

" Map <CTRL>-B to run PHP parser check
"noremap "<C-B> :!php -l %<CR>

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/.vim/php_funclist.txt dictionary+=~/.vim/php_funclist.txt
" Use the dictionary completion
set complete-=k complete+=k
set runtimepath^=~/.vim/bundle/ctrlp.vim

" http://www.vim.org/tips/tip.php?tip_id=102
" This function determines, whether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

set ignorecase                 " caseinsensitive searches
set smartcase                 " caseinsensitive searches
set showcmd                    " always show command or insert mode
set showmode                   " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set formatoptions=tcqor
syntax enable

set tags=./tags; "use ctags file in current directory or parent, recursive to root

" show the bottom status bar
set laststatus=2

" set window status line, not sure how we want to do this yet
"set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ \%02.2B\ [%04l,%04v][%p%%]\ %L

" line wrapping when using left/right arrow keys in normal <>, insert mode [], hl, s(?), ~(?)
set whichwrap=<,>,[,],h,l,b,s,~

set comments=sr:/*,mb:*,ex:*/

set pastetoggle=√

" makes c style comment lines start with *
set fo+=r

" key mappings
:nnoremap <silent> <C-l> :nohl<CR><C-l>

"""
" actions for various filetypes
"""

" not sure what this does
au FileType html,xhtml comp tidy

au Filetype js setlocal ts=2 sts=2 sw=2 expandtab
au Filetype html setlocal ts=4 sts=4 sw=4 expandtab
au Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
au Filetype perl setlocal ts=2 sts=2 sw=2 expandtab
au Filetype python setlocal ts=2 sts=2 sw=2 expandtab
au Filetype java setlocal ts=4 sts=4 sw=4 expandtab

au FileType yaml source ~/.vim/scripts/yaml.vim

" for 37signals writeboard files -  include syntax higlighting
au Filetype writeboard source ~/.vim/syntax/writeboard.vim
au BufRead,BufNewFile *.hbs set ft=html syntax=handlebars
"au BufRead,BufNewFile *.writeboard source ~/.vim/syntax/writeboard.vim

" various abbreviations
" function template
"au FileType php comp php |
"	\ :ab function /**<CR> <CR>@param<CR>@return<CR><BS><BS>/<ESC>A<CR>function(){<CR>}<ESC>kw|

" better comment blocks and nice print n die template
au FileType php :abbrev /** /**<CR><CR>/<ESC>kA |
	\ :ab pr1d echo '<pre>';var_dump();die();<ESC>bbba |
	\ :ab pr2d echo '<pre>';debug_print_backtrace();die();<ESC> |
	\ :ab e0el error_log(var_export(  , 1));<ESC>bbbba

" remove ^M dos endings:
" :1,$s/{Ctrl+V}{Ctrl+M}//{Enter}
:ab fixdos <ESC>1,$s/<C-v><C-m>//<CR>

" read drupal module files as php files
au BufRead,BufNewFile *.module set filetype=php

" for sup
au BufRead sup.* set ft=mail

let g:ctrlp_root_markers = ['package.json']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|build)$'
let g:vim_jsx_pretty_colorful_config = 1
let g:javascript_plugin_jsdoc = 1

" use my transparent background
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized8

let g:ale_floating_preview = 1
let g:ale_hover_to_preview = 1
let g:ale_set_balloons = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint']
\}
let g:ale_fixers = {
\   'javascript': ['eslint']
\}
let g:ale_pattern_options = {
\   '.*\.ts$': {'ale_enabled': 1},
\   '.*\.tsx$': {'ale_enabled': 1}
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_javascript_eslint_use_global = 0
let g:ale_completion_enabled = 1
let g:ale_typescript_standard_executable = 'standard'
let g:dash_activate = 1
let g:dash_map = {
    \ 'js' : 'javascript'
    \ }

if has('gui_running')
    set background=light
		colorscheme solarized8
else
    set background=dark
endif

" allow mouse scrolling in normal mode only
":set mouse=n

" trailing spaces
match ErrorMsg '\s\+$'
nnoremap <Leader>we :%s/\s\+$//e<CR>
nnoremap K :ALEHover<CR>
