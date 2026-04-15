# fino-time-custom.zsh-theme

function virtualenv_info {
    [ $CONDA_DEFAULT_ENV ] && echo "($CONDA_DEFAULT_ENV) "
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function custom_git_prompt {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

    local git_status
    git_status=$(git status --porcelain 2>/dev/null)

    local indicator=""
    if [[ -n "$git_status" ]]; then
        local unstaged
        unstaged=$(echo "$git_status" | grep -E "^([ ?][^ ?]|[?][?])" 2>/dev/null)
        if [[ -n "$unstaged" ]]; then
            # Orange * for unstaged/untracked changes
            indicator=" %{$FG[214]%}*%{$reset_color%}"
        else
            # Green * when all changes are staged
            indicator=" %{$FG[040]%}*%{$reset_color%}"
        fi
    fi

    echo "  %{$FG[250]%}git:%{$reset_color%} %{$FG[022]%}${branch}%{$reset_color%}${indicator}"
}

precmd() {
    echo ""
}

preexec() {
    printf "\e[38;5;239m╰—> $(date '+%y-%m-%d %H:%M:%S')\e[0m\n\n"
}

PROMPT='╭— $(virtualenv_info)%{$FG[033]%}%~%{$reset_color%}$(custom_git_prompt) %{$FG[250]%}>>%{$reset_color%} '

