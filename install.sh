#!/bin/bash -eu

setup_homedir() {
  local config
  config=${HOME}/.config

  mkdir -p ${config}
}

setup_workspace() {
  local workspace
  workspace=${1}/workspace

  echo "Creating workspace at '${workspace}'..."
  mkdir -p $workspace
}

setup_nvim() {
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

link_files() {
  local home
  home=${HOME}
  
  echo "Linking 'Brewfile'..."
  ln -sf $(pwd)/brew/Brewfile $home/.Brewfile

  echo "Linking '.gitconfig'..."
  ln -sf $(pwd)/git/gitconfig $home/.gitconfig

  echo "Linking 'nvim'..."
  ln -sf $(pwd)/nvim/ $home/.config
}


main() {
  local home
  home=${1:-$HOME}

  setup_homedir
  pushd ${HOME}
    setup_workspace ${home}
  popd

  setup_nvim
  link_files
}

main
