function make_cbz
	zip $argv[1].cbz *.$argv[2]
    mv $argv[1].cbz $argv[3]
end
