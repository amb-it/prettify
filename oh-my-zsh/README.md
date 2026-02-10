modify oh-my-zsh theme:

cp ~/.oh-my-zsh/themes/fino-time.zsh-theme  ~/.oh-my-zsh/custom/themes/fino-time-custom.zsh-theme
 
nano ~/.oh-my-zsh/custom/themes/fino-time-custom.zsh-theme


PROMPT=$'\n'"╭─<< %{$terminfo[bold]$FG[033]%}%~%{$reset_color%}\$(git_prompt_info) | %{$FG[239]%}%D %*%{$reset_color%}
|
╰─\$(virtualenv_info)\$(prompt_char) "
