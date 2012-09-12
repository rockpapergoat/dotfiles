" 111109, compiled vimrc from bits of puppetlabs config and others

" Jeff McCune <jeff@puppetlabs.com>
" 2010-07-28
" Vim customizations for Puppet Labs
" This should be useful for presentations, demos, and training.

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"filetype plugin indent on
filetype plugin on
set nocompatible
set showmode
set showcmd
set hidden
set ruler
syntax enable
" http://www.linux.com/archive/feature/120126
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}\ %{&fo}]\ [%l/%L,%v\ %p%%]\ [HEX=\%02.2B]
" Always show the status line
set laststatus=2
" Tabs and indentation (Default to two spaces)
set tabstop=4 "set tab character to 4 characters
set shiftwidth=4 "indent width for autoindent
set expandtab "turn tabs into whitespace
set smartindent
filetype indent on "indent depends on filetype

" JJM Enable line numbers, useful for discussion when on a projector
set number

" JJM Highlight extra white space.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Give an indicator when we approach col 80 (>72)
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>72v', -1)
" Give a strong indicator when we exceed col 80(>80)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" Give an indicator of tailing white space.
au BufWinEnter * let w:m3=matchadd('ErrorMsg', '\s\+$', -1)
" Give an indicator of spaces before a tab.
au BufWinEnter * let w:m4=matchadd('ErrorMsg', ' \+\ze\t', -1)

" 110326, cf: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
let mapleader = ","
nnoremap z1 yypVr=

" 110509, pydiction
let g:pydiction_location = "~/.vim/extra/complete-dict"

" 110524, insert current date
:nnoremap <F5> "=strftime("%D")<CR>P

" 110711, substitute * for - globally
noremap <leader>2 = :%s/\*/\-/g

" 110823, delimitMate options
let delimitMate_autoclose = 1

" 120304, backspace issues?
set backspace=start,eol,indent

" 120305, os x clipboard @kelseyhightower
set clipboard=unnamed
