set number
set relativenumber
:source $VIMRUNTIME/mswin.vim
call plug#begin()


" FINISH THIS https://github.com/NeuralNine/config-files/blob/master/init.vim
" https://youtu.be/JWReY93Vl6g


" neovim/vim see's (double quotes) as comments therefore, 
" only use (single quotes) for strings
" ; https://github.com/junegunn/vim-plug/issues/33

" use the command 
" :PlugInstall 
" to add new Plug files.

" airline: affects the look of neovim
Plug 'https://github.com/vim-airline/vim-airline'
" NERDTree: allows you to move between files within nvim
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
" Allows you to see the variables of a file.
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Use CocInstall coc-<language-name> to have languages to auto-complete
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

call plug#end()



" C- is Ctrl + (letter)
"
" Most importante
" ctrl-w+w swtiches between tabs
" ctrl-Z+Z to save and exit
"

" change the look of NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
