function catimg
	curl -Ls "http://thecatapi.com/api/images/get?format=src&type=gif&api_key=$THE_CAT_API_KEY" | imgcat
end
