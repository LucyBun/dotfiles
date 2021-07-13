
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

echo '(\(\           _    '
echo '(-.-) quack  >(.)__ '
echo 'o(")(")       (___/ '

#use "code fileorfolder" to open with vscode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias fuck='sudo $(fc -ln -1)'

#Initiate starship
eval "$(starship init zsh)"

#ZSH Autosuggestions 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fpath=(~/.zsh $fpath)
