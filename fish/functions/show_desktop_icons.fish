function show_desktop_icons --argument show
	defaults write com.apple.finder CreateDesktop -bool $show
and killall Finder
end
