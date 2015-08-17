function webcomic_fetcher
	while test (count $argv) -gt 0
        switch $argv[1]
            case -n --next
                set next_sel $argv[2]
                set -e argv[1]
                set -e argv[1]
            case -i --image
                set img_sel $argv[2]
                set -e argv[1]
                set -e argv[1]
            case -s --start
                set start_url $argv[2]
                set -e argv[1]
                set -e argv[1]
            case -t --title
                set comic_name $argv[2]
                set -e argv[1]
                set -e argv[1]
        end
    end

    echo next_sel: $next_sel img_sel: $img_sel start_sel: $start_url comic_name: $comic_name

    set -l next_comic $start_url
    while not test -z $next_comic
        wget $next_comic -O tmp.html
        wget (pup -f tmp.html $img_sel)
        set -l next_comic (pup -f tmp.html $next_sel)
        sleep 1
    end
end
