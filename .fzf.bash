
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


-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
$ which fzf
/opt/homebrew/bin/fzf


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

-------------------------------------------------------------------

# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/bin/fzf* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/bin/fzf"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/Cellar/fzf/0.30.0/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/opt/homebrew/Cellar/fzf/0.30.0/shell/key-bindings.zsh"
