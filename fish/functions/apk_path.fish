function apk_path
	adb shell pm path $argv | sed 's/package://'
end
