# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.
set GEM_ROOT ~/.local/share/gem
set -x PYENV_ROOT /usr/local/var/pyenv
set -x RBENV_ROOT /usr/local/var/rbenv

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
