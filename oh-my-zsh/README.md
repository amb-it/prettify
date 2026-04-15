## Apply my custom oh-my-zsh theme:

mkdir ~/.oh-my-zsh/custom/themes
cp ./fino-time-custom.zsh-theme ~/.oh-my-zsh/custom/themes/fino-time-custom.zsh-theme


## Modify oh-my-zsh theme:

cp ~/.oh-my-zsh/themes/fino-time.zsh-theme  ~/.oh-my-zsh/custom/themes/fino-time-custom.zsh-theme
 
nano ~/.oh-my-zsh/custom/themes/fino-time-custom.zsh-theme

```
PROMPT=$'\n'"╭─<< %{$terminfo[bold]$FG[033]%}%~%{$reset_color%}\$(git_prompt_info) | %{$FG[239]%}%D %*%{$reset_color%}
|
╰─\$(virtualenv_info)\$(prompt_char) "
```


## To apply changes:

source ~/.zshrc



## Make prompt bold:

nano ~/.zshrc

function zle-line-init {
  echoti bold
}
zle -N zle-line-init
function zle-line-finish {
  echoti sgr0
}
zle -N zle-line-finish
