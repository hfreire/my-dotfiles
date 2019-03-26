stow -t ~/ -S vim

vim --noplugin -u .vimrc "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall

stow -t ~/ -D vim


git subtree add --prefix vim/.vim/bundle/Vundle https://github.com/VundleVim/Vundle.vim.git master --squash
git subtree pull --prefix vim/.vim/bundle/Vundle https://github.com/VundleVim/Vundle.vim.git master --squash
