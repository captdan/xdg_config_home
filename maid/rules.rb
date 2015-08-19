# Sample Maid rules file -- some ideas to get you started.
#
# If you come up with some cool tools of your own, please send me a pull request on GitHub!  Also, please consider sharing your rules with others via [the wiki](https://github.com/benjaminoakes/maid/wiki).
#
# For more help on Maid:
#
# * Run `maid help`
# * Read the README, tutorial, and documentation at https://github.com/benjaminoakes/maid#maid
# * Ask me a question over email (hello@benjaminoakes.com) or Twitter (@benjaminoakes)
# * Check out how others are using Maid in [the Maid wiki](https://github.com/benjaminoakes/maid/wiki)
Maid.rules do
  rule 'Updating Gems' do
    `gem update`
  end

  rule 'Cleaning Gems' do 
    `gem cleanup`
  end

  rule 'Updating Brew' do
    `brew update --rebase >> ~/.local/share/brew/brew.log`
  end

  rule 'Upgrading Brew' do
    `brew upgrade -all >> ~/.local/share/brew/brew.log`
  end

  rule 'Cleaning Brew' do
    `brew cleanup >> ~/.local/share/brew/brew.log`
  end

  #Get all installed brew casks
  installedCasks = (`brew cask list`).split()

  # Upgrade casks, that have a version number other than latest
  # Inspiration from https://github.com/caskroom/homebrew-cask/issues/4678#issuecomment-77692503
  rule 'Update Casks' do
    installedCasks.each do |cask|
      `! brew cask info #{cask} |grep -qF "Not installed" || brew cask install #{cask} >> ~/.local/share/brew/brew.log`
    end
  end

  # Delete old cask versions
  # Inspiration from https://gist.github.com/orangeudav/26a8752ae54a169b8516
  rule 'Clean brew casks' do
    `brew cask cleanup >> ~/.local/share/brew/brew.log`

    installedCasks.each do |cask|

      # Get installed version folders for each installed cask
      versions = dir("/opt/homebrew-cask/Caskroom/#{cask}/*")

      # Jump to next if only one version is installed
      next if versions.size == 1

      # Sort version folders by creation date
      versions.sort_by! do |item|
        created_at(item)
      end

      # Remove newest version folder from list
      versions.pop

      # Trash all remaining versions
      versions.each do |version|
        trash version
      end
    end
  end

  rule 'Log brew installed packages' do
    `brew ls > ~/.config/brew/installed`
    `git --git-dir=/Users/dbburnet/.config/.git --work-tree=/Users/dbburnet/.config commit -m 'Updating list of installed packages' brew/installed`
  end

  rule 'Log brew cask installed packages' do
    `brew cask ls > ~/.config/brew/cask_installed`
    `git --git-dir=/Users/dbburnet/.config/.git --work-tree=/Users/dbburnet/.config commit -m 'Updating list of installed casks' brew/cask_installed`
  end
end
