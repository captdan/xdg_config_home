function sayrand
	say -v (say -v '?' | tail -n (math (random) '%' (say -v '?' | wc -l)) | head -1 | cut -d ' ' -f 1) $argv
end
