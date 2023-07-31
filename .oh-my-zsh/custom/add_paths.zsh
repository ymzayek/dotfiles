# Install location for RubyGems Packages
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Additional binaries
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/pycharm-2022.1/bin"

export PATH="$PATH:$HOME/.dotfiles/.bin"

# Path to download nilearn data
export NILEARN_DATA="$HOME/nilearn/nilearn_data"

# FSL paths
export PATH="$PATH:/usr/local/fsl/bin"
export FSLDIR="/usr/local/fsl"

# For installing MRTrix
export EIGEN_CFLAGS="-isystem /usr/include/eigen3"
