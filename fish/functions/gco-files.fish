function gco-files
	git config core.sparsecheckout true
    mkdir -p .git/info

    for f in $argv
        echo $f >> .git/info/sparse-checkout
    end

    git read-tree -m -u HEAD
end
