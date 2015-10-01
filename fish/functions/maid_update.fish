function maid_update
	tail -f $XDG_DATA_HOME/{brew/brew,maid/maid}.log &

    if test (count $argv) -eq 1
        maid clean -f -r $argv[1]
    else
        maid clean -f -r $XDG_CONFIG_HOME/maid/rules.rb
    end

    kill (jobs -lp | tail -1)
end
