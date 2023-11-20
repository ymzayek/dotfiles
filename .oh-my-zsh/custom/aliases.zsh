# Initialize FreeSurfer

alias fs='export FREESURFER_HOME=/usr/local/freesurfer/7.2.0/; source $FREESURFER_HOME/SetUpFreeSurfer.sh'

# Aliases for dev environment

alias nd='conda activate nilearn-dev; cd ~/nilearn/nilearn'
alias quickdocs='cd ~/nilearn/nilearn/doc;make clean && make html-noplot;cd ../'
alias nilearn-pre='conda activate nilearn-pre; cd ~/nilearn/nilearn'
alias upgrade-pre="pip install --progress-bar off --upgrade --pre pip setuptools wheel flake8;pip install --progress-bar off --pre --upgrade -e '.[plotting,plotly,test]'"

# Git aliases

alias cleand='git clean -xdn -e mytests -e .idea/ -e .vscode/'
alias clean='git clean -xfd -e mytests -e .idea/ -e .vscode/'
alias unstage='git restore --staged'
alias flakediff='COMMIT=$(git merge-base main @); git diff $COMMIT | flake8 --diff'
alias cifull='git commit --allow-empty -m "[circle full] request full build"'
alias gits='git status'
alias gitc='git checkout'
alias gitcm='git checkout main'

# Other aliases

alias ssh-drago-nb='ssh -L 9429:localhost:9429 drago -t "/storage/store/work/ymzayek/miniforge/bin/jupyter-notebook --port 9429 --no-browser --NotebookApp.token='' --NotebookApp.iopub_data_rate_limit=1.0e7 --NotebookApp.notebook_dir='/storage/store/work/ymzayek/nilearn-fork/nilearn'"'
alias fnd='history | grep'
alias pych='pycharm.sh &> /dev/null &'
alias pycharm='pycharm.sh'
