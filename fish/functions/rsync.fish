function rsync
	command rsync -e "ssh -F $XDG_CONFIG_HOME/ssh/config" $argv;
end
