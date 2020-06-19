export PERL_BADLANG=0

# Setup fzf
# ---------
if [[ ! "$PATH" == *{{ fzf_install_prefix }}* ]]; then
  export PATH="${PATH:+${PATH}:}{{ fzf_install_prefix }}"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "{{ fzf_src_dir }}/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "{{ fzf_src_dir }}/shell/key-bindings.bash"
