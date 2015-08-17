function multicom
	tmux new-window -n 'multicom'

	for host in $argv
		tmux splitw "ssh $host"
		tmux select-layout tiled
	end

	tmux kill-pane -t 0
	tmux select-pane -t 0
	tmux set-window-option synchronize-panes on
end
