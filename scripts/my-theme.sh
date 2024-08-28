#!/usr/bin/env bash
export LC_ALL=en_US.UTF-8

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  
  white='#F8F8F2'
  gray='#454158'
  dark='#22212C'
  purple='#C6A6F7'
  green='#57E888'
  red='#EB6A66'
  yellow='#FFFF80'
  lightgray='#5A688B'
  pink='#EA8AC4'
  blue='#92DEEE'

  tmux set-option -g status-interval 5000

  tmux set-option -g pane-active-border-style "fg=${red}"
  tmux set-option -g pane-border-style "fg=${gray}"

  tmux set-option -g message-style "bg=${gray},fg=${white}"

  tmux set-option -g status-style "bg=${gray},fg=${white}"

  tmux set-option -g status-left "#[bg=${green},fg=${dark}, bold] #S #[bg=${lightgray},fg=${white}]  #(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD) "
  tmux set-option -g status-right "#[fg=${white},bg=${pink},nobold,nounderscore,noitalics] #($current_dir/battery.sh) #[fg=${dark},bg=${yellow},bold,nounderscore,noitalics] #($current_dir/datetime.sh) "
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-current-format "#[fg=${white},bg=${purple}] #I #W "
  tmux set-window-option -g window-status-format "#[fg=${white}]#[bg=${gray}] #I #W "
  tmux set-window-option -g window-status-activity-style "bold"
  
  tmux set -g status-interval 1
}
main
