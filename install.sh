#!/bin/bash -eu

setup_directory() {
  local workspace
	workspace=${1}/workspace

  echo "Creating workspace at '${workspace}'..."
	mkdir -p $workspace
}

link_files() {
  local home
  home=${HOME}
  
  echo "Linking 'Brewfile'..."
  ln -sf $(pwd)/brew/Brewfile $home/.Brewfile

  echo "Linking '.gitconfig'..."
  ln -sf $(pwd)/git/gitconfig $home/gitconfig

  echo "Linking 'vimrc'..."
  ln -sf $(pwd)/vim/vimrc $home/.vimrc
}

main() {
  local home
  home=${1:-$HOME}

  pushd ${HOME}
    setup_directory ${home}
    link_files
  popd
}

main
