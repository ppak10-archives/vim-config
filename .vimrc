".vimrc
"Configurations for Vim Text Editor

"80 CHARACTER LIMIT
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"INDENTATION
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2


"VIM INTEGRATED PLUGIN SETTINGS - http://vimcasts.org/episodes/packages/ 
"Creating package directory: `mkdir -p .vim/pack/bundle/start`
"Add plugins by cloning to `/start` directory
"Run vim command `:helptags ALL` to bind plugin help docs
"Add optional package directory: `cd .vim/pack/bundle && mkdir opt`
"Use optional plugins with vim command `:packadd <plugin name>`


"VIM-PLUG PLUGIN SECTION - https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ 
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" SYNTASTIC - https://github.com/vim-syntastic/syntastic.git
Plug 'scrooloose/syntastic'

" SYNTASTIC-LOCAL-ESLINT - https://github.com/mtscout6/syntastic-local-eslint.vim
Plug 'mtscout6/syntastic-local-eslint.vim'

"Initialize plugin system
call plug#end()


"SYNTASTIC CONFIG
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
