
filetype off
call pathogen#runtime_append_all_bundles() 
syntax on
syntax enable

"Tell new splits open below the active window, not above it:
set splitbelow 

"Tell new vertical open to the right of the active window:
set splitright 

"TODO: comment explaining this, anyone?
filetype plugin indent on

" solarized
set background=dark
colorscheme solarized

" don't know what this is actually
au BufNewFile,BufRead *.apk set filetype=apk

"set tabs to 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4

" ruby and yaml files are indented by two
autocmd FileType ruby,rdoc,cucumber,php,yaml set softtabstop=2 tabstop=2 shiftwidth=2

"automatically indent
set smartindent
set cindent

"show line numbers on the left
set number

"case insensitive search
set ignorecase
set smartcase

"search the whole build tree for ctags
set tags=tags;/


"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
":colorscheme evening


"the so-called 'mandatory option'
:set hidden

"the sequence `\d` will delete the current buffer without killing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

let NERDTreeIgnore = ['\.pyc$', '\~$']
map <F2> :NERDTreeToggle<CR>

"add a shortcut to reindex CommandT's file listing
map <leader>f :CommandTFlush<CR>

"open the window larger than normal (100 wide by 40 tall)
"win 100 40

set nocompatible
"allow for c,w to change part of a camel-cased word
"source $HOME/Dropbox/dev/camelcasemotion.vim

"make it so mouse and keyboard don't exit select mode."
"this makes it so we can select with the mouse and then act on that block."
set selectmode=""


" this gives me convenient key mappings for window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" a quick way to bring up Ack 
noremap <silent> ,a :Ack --follow 


" create a shortcut to get out of insert mode by typing 'jj'
inoremap jj <ESC>


"from here down is the default _vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


map <leader>f :CommandTFlush<CR>

    

" turn off the annoying top bar in MacVim
if has("gui_running")
 set guioptions=egmrt
endif

"give me that nice little gutter so i don't make stuff too wide
"set formatoptions=qrn1
"set colorcolumn=80

