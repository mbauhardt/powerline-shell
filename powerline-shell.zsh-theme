function powerline_precmd() {
  PROMPT="$($ZSH_CUSTOM/themes/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null; echo '\n\r%# ')"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd