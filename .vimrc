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

set history=700                         " Set history
set undolevels=700                      " Set history

set nobackup                            " Disable swap/backup files
set nowritebackup                       " Disable backup
set noswapfile                          " No swap file

set ignorecase                          " ignore case when searching
set smartcase                           " smartcase

" configure the stats line, suppose to show git status, total lines, and percentage
set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y]\ \ %=\ line:%l/%L\ col:%c\ \ \ \ \ %{strftime(\"%I:%M:%S%p\")}

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240
endif

set background=dark
colorscheme wombat256mod 

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

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
inoremap <Leader>e <C-C>:quit<CR>
noremap <Leader>E :qa!<CR>   " Quit all windows

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Quick save commands
noremap <Leader>s :update<CR>
inoremap <Leader>s <C-O>:update<CR>
vnoremap <Leader>s <C-C>:update<CR>


" Jedi-VIM settings
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#usages_command = "<leader>n"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#usages_command = ""

" Omin menu bindings
function! OmniPopup(action)
    if pumvisible()
           if a:action == 'j'
              return "\<C-N>"
           elseif a:action == 'k'
              return "\<C-P>"
           endif
        endif
    return a:action
endfunction

inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

" ctrl p settings
let g:ctrlp_working_path_mode="ra"
let g:ctrlp_max_height = 10 
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Indent blocks in visual mode
vnoremap < <gv
vnoremap > >gv

" Unmap F1
noremap <F1> <Esc>

" Map jj to <ESC>
inoremap jj <Esc>

" Jump to start/end of lines with home row keys
noremap <Leader>h ^
noremap <Leader>l $

" Clear search highlighting
noremap <C-\> let @/=""<CR>
