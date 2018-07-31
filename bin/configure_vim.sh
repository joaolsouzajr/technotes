
#[pathogen.vim](https://github.com/tpope/vim-pathogen)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
git clone https://github.com/ctrlpvim/ctrlp.vim.git \
  ~/.vim/bundle/ctrlp.vim

#[nerdtree](https://github.com/scrooloose/nerdtree)
git clone https://github.com/scrooloose/nerdtree.git \
  ~/.vim/bundle/nerdtree

#[syntastic](https://github.com/scrooloose/syntastic)
#git clone https://github.com/vim-syntastic/syntastic.git

git clone https://github.com/vim-airline/vim-airline \
  ~/.vim/bundle/vim-airline

git clone https://github.com/vim-airline/vim-airline-themes \
  ~/.vim/bundle/vim-airline-themes

git clone  https://github.com/flazz/vim-colorschemes.git \
  ~/.vim/bundle/colorschemes

#[vim-javascript](https://github.com/pangloss/vim-javascript)
git clone https://github.com/pangloss/vim-javascript.git \
  ~/.vim/bundle/vim-javascript

#[vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
#git clone https://github.com/jelera/vim-javascript-syntax.git

git clone https://github.com/editorconfig/editorconfig-vim.git \
  ~/.vim/bundle/editorconfig-vim

curl -LSso ~/.vimrc \
  https://gist.githubusercontent.com/lourencoccc/bc14e77a3c77b2aad5c67760303d1fbe/raw/20fda3d32eda02dfdbfe9d6bf9bc33a8c2acfc3b/vimrc 
