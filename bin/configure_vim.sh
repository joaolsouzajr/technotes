
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

mkdir ~/.vim/colors/
cp ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors/

#[vim-javascript](https://github.com/pangloss/vim-javascript)
git clone https://github.com/pangloss/vim-javascript.git

#[vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
git clone https://github.com/jelera/vim-javascript-syntax.git

curl -LSso ~/.vimrc https://gist.githubusercontent.com/lourencoccc/bc14e77a3c77b2aad5c67760303d1fbe/raw/43334d67474d3e6412d45e31b1dabd71c2a6a179/vimrc 
