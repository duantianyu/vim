#!/bin/bash

set -e

echo "It will take some minutes, please be patient"
echo "安装需要一些时间，请耐心等待"

root_dir=`pwd`
vim_alias_dir=$HOME/.vim
vim_rc=$HOME/.vimrc
d=`date +%Y%m%d-%H%M%S`

function exe_cmd() {
    echo $1
    eval $1
}

if which apt-get >/dev/null; then
    exe_cmd "sudo apt-get update"
    exe_cmd "sudo apt-get install -y vim vim-nox git ctags" 

elif which yum >/dev/null; then
    exe_cmd "sudo yum install -y git ruby ruby-devel lua lua-devel luajit luajit-devel ctags mercurial python python-devel python3 python3-devel tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed ncurses-devel"
    exe_cmd "git clone https://github.com/vim/vim.git"
    exe_cmd "cd vim"
    exe_cmd "./configure --with-features=huge --enable-multibyte --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-luainterp --enable-gui=gtk2 --enable-cscope --with-tlib=ncurses --prefix=/usr"
    exe_cmd "sudo make install"

elif which brew >/dev/null; then
    exe_cmd "brew install vim --with-lua git ctags"
fi


if [ -e $vim_alias_dir ]; then
    exe_cmd "mv -f $vim_alias_dir  $HOME/vim_bak$d"
fi 

if [ -e $vim_rc ]; then
    exe_cmd "mv -f $vim_rc  $HOME/vimrc_bak$d"
fi

#exe_cmd "ln -sf $root_dir/vimrc $vim_rc"
exe_cmd "sudo \cp $root_dir/vimrc $vim_rc"

exe_cmd 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
echo "Installing..."
echo "正在安装......"
exe_cmd 'vim +PluginInstall +qall'
echo "Installation is complete"
echo "安装完成"

