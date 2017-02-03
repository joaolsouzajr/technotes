
#[pathogen.vim](https://github.com/tpope/vim-pathogen)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
#[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
git clone https://github.com/ctrlpvim/ctrlp.vim.git

#[nerdtree](https://github.com/scrooloose/nerdtree)
git clone https://github.com/scrooloose/nerdtree.git

#[syntastic](https://github.com/scrooloose/syntastic)
git clone https://github.com/vim-syntastic/syntastic.git

#[vim-hybrid](https://github.com/w0ng/vim-hybrid)
git clone https://github.com/w0ng/vim-hybrid.git

#[vim-javascript](https://github.com/pangloss/vim-javascript)
git clone https://github.com/pangloss/vim-javascript.git

#[vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
git clone https://github.com/jelera/vim-javascript-syntax.git

echo "execute pathogen#infect()                                                       

syntax on                                                                       
set t_Co=256                                                                    
filetype plugin indent on                                                       

set colorcolumn=80                                                              
set textwidth=80                                                                
autocmd BufRead *.md,*.txt set tw=100                                           
autocmd FileType c,cpp,java,groovy,javascript autocmd BufWritePre <buffer> %s/\s\+$//e

set tabstop=2                                                                   
set shiftwidth=2                                                               
set softtabstop=2                                                               
set expandtab                                                                   

set background=dark                                                             
colorscheme hybrid                                                              

let g:javascript_plugin_jsdoc = 1                                               

set statusline+=%#warningmsg#                                                   
set statusline+=%{SyntasticStatuslineFlag()}                                    
set statusline+=%*                                                              

let g:syntastic_always_populate_loc_list = 1                                    
let g:syntastic_auto_loc_list = 1                                               
let g:syntastic_check_on_open = 1                                               
let g:syntastic_check_on_wq = 0" >> ~/.vimrc
