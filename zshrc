
eval "$(rbenv init -)"

# completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"
export PATH="/opt/homebrew/opt/m4/bin:$PATH"

# brew
# don't update brew
export HOMEBREW_NO_AUTO_UPDATE=1

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
 
alias ls='ls -laF'
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"


# Load ui at the end
export TYPEWRITTEN_CURSOR=block
export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
export TYPEWRITTEN_DISABLE_RETURN_CODE=true
autoload -U promptinit; promptinit
prompt typewritten

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sukun/.sdkman"
[[ -s "/Users/sukun/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sukun/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
