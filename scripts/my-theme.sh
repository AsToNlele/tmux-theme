#!/usr/bin/env bash
export LC_ALL=en_US.UTF-8

main() {
  
  white='#F8F8F2'
  gray='#454158'
  dark='#22212C'
  purple='#C6A6F7'
  green='#8cf67a'
  red='#FF9580'
  yellow='#FFFF80'

  tmux set-option -g status-interval 5000

  tmux set-option -g pane-active-border-style "fg=${red}"
  tmux set-option -g pane-border-style "fg=${gray}"

  tmux set-option -g message-style "bg=${gray},fg=${white}"

  tmux set-option -g status-style "bg=${gray},fg=${white}"

  tmux set-option -g status-left "#[bg=${green},fg=${dark}] #S "
  tmux set-option -g status-right ""
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-current-format "#[fg=${white},bg=${purple}] #I #W "
  tmux set-window-option -g window-status-format "#[fg=${white}]#[bg=${gray}] #I #W "
  tmux set-window-option -g window-status-activity-style "bold"
}
main
