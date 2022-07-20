#initialize FreeSurfer

alias fs='export FREESURFER_HOME=/usr/local/freesurfer/7.2.0/; source $FREESURFER_HOME/SetUpFreeSurfer.sh'

# Aliases for dev environment

alias nd='conda activate nilearn-dev; cd ~/nilearn/nilearn'

# Git aliases

alias cleand='git clean -xdn -e mytests -e .idea/'
alias clean='git clean -xfd -e mytests -e .idea/'
alias flakediff='git diff HEAD | flake8 --diff'
alias unstage='git restore --staged'

# Other aliases

alias ssh-drago-nb='ssh -L 9429:localhost:9429 drago -t "/storage/store/work/ymzayek/miniforge/bin/jupyter-notebook --port 9429 --no-browser --NotebookApp.token='' --NotebookApp.iopub_data_rate_limit=1.0e7 --NotebookApp.notebook_dir='/storage/store/work/ymzayek/nilearn-fork/nilearn'"'

alias fnd='history | grep'

alias pych='pycharm.sh'
