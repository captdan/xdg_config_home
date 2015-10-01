function randchar
	python -c "import random;print chr(65 + random.randint(0, 26))" $argv;
end
