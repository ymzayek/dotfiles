# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yasmin/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yasmin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yasmin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yasmin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Prevent install into conda base environment
# Adapted from https://github.com/conda/conda/issues/7791#issuecomment-945676641

function pip(){
  if [ "$(command -v pip)" ] && [ "$1" = "install" ]; then
    echo "About to install in ${CONDA_PROMPT_MODIFIER-}"

    while true; do

    read -q "REPLY?Do you want to proceed? (y/n) "

    case $REPLY in
  [yY] ) echo "\nOk, proceeding";
      break;;
  [nN] ) echo "\nExiting...";
      return;;
  * ) echo "\nInvalid response";;
    esac

    done

    command pip "$@"
  else
    command pip "$@"
  fi
}

function extended_conda(){
  if [ "$(command -v conda)" ] && [ "$1" = "install" ]; then
    echo "About to install in ${CONDA_PROMPT_MODIFIER-}"

    while true; do

    read -q "REPLY?Do you want to proceed? (y/n) "

    case $REPLY in
  [yY] ) echo "\nOk, proceeding";
      break;;
  [nN] ) echo "\nExiting...";
      return;;
  * ) echo "\nInvalid response";;
    esac

    done

    conda "$@"
  else
    conda "$@"
  fi
}
alias conda=extended_conda

