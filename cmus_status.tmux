#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind-key -n F8 run-shell "cmus-remote -u"
tmux bind-key -n F9 run-shell "cmus-remote -n"
tmux bind-key -n F7 run-shell "cmus-remote -r"

cpu_interpolation=(
  "\#{cmus_artist}"
  "\#{cmus_status}"
  "\#{cmus_title}"
  "\#{cmus_by}"
)
cpu_commands=(
  "#($CURRENT_DIR/scripts/get_artist.sh)"
  "#($CURRENT_DIR/scripts/get_status.sh)"
  "#($CURRENT_DIR/scripts/get_title.sh)"
  "#($CURRENT_DIR/scripts/get_by.sh)"
)

set_tmux_option() {
  local option=$1
  local value=$2
  tmux set-option -gq "$option" "$value"
}

do_interpolation() {
  local all_interpolated="$1"
  for ((i=0; i<${#cpu_commands[@]}; i++)); do
    all_interpolated=${all_interpolated//${cpu_interpolation[$i]}/${cpu_commands[$i]}}
  done
  echo "$all_interpolated"
}

update_tmux_option() {
  local option=$1
  local option_value=$(get_tmux_option "$option")
  local new_option_value=$(do_interpolation "$option_value")
  set_tmux_option "$option" "$new_option_value"
}

get_tmux_option() {
	local option=$1
	local default_value=$2
	local option_value=$(tmux show-option -gqv "$option")
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}

main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}
main


