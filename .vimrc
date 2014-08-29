call pathogen#infect()
call pathogen#helptags()

syntax on
set ts=4				                " tab width to 4
set nu					                " show line number
set autoindent				            " auto indent
set expandtab				            " use spaces for tabs
set hlsearch				            " highlight search results
set cursorline				            " highlight cursor line
set clipboard=unnamed                   " use system clipboard
set ruler                               " show row and column in footer
set incsearch                           " show search results as I type

" configure the stats line, suppose to show git status, total lines, and percentage
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=120
endif

let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Map F5 to gundo shortcut
nnoremap <F5> :GundoToggle<CR>

" Mappings for switching between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make splits go to the bottom and right
set splitbelow
set splitright

" Nerdtree toggle
nnoremap <C-E> :NERDTreeToggle<CR>
