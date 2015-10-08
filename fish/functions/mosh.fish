function mosh
	command mosh --ssh="ssh -F $XDG_CONFIG_HOME/ssh/config" $argv
end
