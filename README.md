stow -t ~/ -S vim

vim --noplugin -u .vimrc "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall

stow -t ~/ -D vim
