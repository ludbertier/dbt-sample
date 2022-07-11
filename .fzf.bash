
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

-------------------------------------------------------------------

# Setup fzf
# ---------
if [[ ! "$PATH" == */home/qw40wz/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/qw40wz/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/qw40wz/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/qw40wz/.fzf/shell/key-bindings.bash"
