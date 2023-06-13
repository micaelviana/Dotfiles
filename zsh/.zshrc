#make sure command is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; 
    then sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"; 
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

#Plugins
plugins=(
    copyfile 
    copybuffer 
    fzf 
    zsh-autosuggestions 
    zsh-syntax-highlighting
    completions
)

#Sources oh-my-zsh config file
source $ZSH/oh-my-zsh.sh

#Aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
