# "Forked" from https://github.com/alvarobp/dotfiles

dotfiles_path=$(cd "$(dirname "$0")"; pwd)
current_date=`date "+%Y%m%d%H%M%S"`

function check_and_link_file() {
  local path=$1

  if [ -f ~/$path ] || [ -h ~/$path ]
  then
    echo "Found ~/$path Backing up to ~/$path.pre-$current_date";
    mv ~/$path ~/$path.pre-$current_date
  fi
  ln -s $dotfiles_path/$path ~/$path
  echo "Linked ~/$path"
}

function check_and_install_oh_my_zsh() {
  if [ ! -d ~/.oh-my-zsh ]
  then
    echo "Cloning Oh My Zsh..."
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    echo "Setting default shell to zsh. Please enter your password."
    chsh -s `which zsh`
  fi
}

function check_and_install_vundle() {
  if [ ! -d ~/.vim/bundle/Vundle.vim ]
  then
    echo "Cloning Vundle..."
    /usr/bin/env git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
}

# ZSH
check_and_install_oh_my_zsh
check_and_link_file ".zshrc"
check_and_link_file ".aliases"

# VIM
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.vim/colors
mkdir -p $HOME/.vim/tmp
check_and_install_vundle
check_and_link_file ".vimrc"
ln -s $dotfiles_path/.vim/colors/vividchalk.vim ~/.vim/colors/vividchalk.vim
