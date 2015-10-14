function anybar --argument color
	echo -n $color | nc -4u -w9 localhost 1738
end
