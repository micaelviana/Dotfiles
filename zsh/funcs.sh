#!/bin/bash
#FUNCTIONS
#make directory and change directory
function mkcd() {
    dir=$1
    if [ -d "$dir" ]; then
        cd "$dir" || exit 1
    else
      mkdir "$dir" && cd "$dir" || exit 1 
    fi
}

#tao of tmux
function tao () {
  [ -z "$TMUX"  ] && { tmux attach || tmux new-session ;}
}

function add_oh_my_zsh_plugin() {
    # check if the URL is provided
    if [ -z "$1" ]; then
        echo "Usage: add_oh_my_zsh_plugin <plugin_URL>"
        return 1
    fi
    
    # clone the plugin repository to the custom plugins directory
    git clone "$1" "$HOME/.oh-my-zsh/custom/plugins/$(basename "$1" .git)"
    
    # add the plugin to the list of plugins in the .zshrc file
    url="$1"
    repo=$(basename "$url" .git)
    sed -i "s/\(plugins=(.*\))/\1 $repo)/" ~/.config/zsh/.zshrc
    
    # reload the .zshrc file
    source "$HOME/.config/zsh/.zshrc"
    
    echo "Plugin added: $(basename "$1" .git)"
}
