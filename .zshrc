# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# for fzf
fcd() {
        local dir
        dir=$(find ${1:-.} -type d -not -path '*/\.*' -not -path '*Library*' -not -path '*Processing*' -not -path '*Scrivener*' 2> /dev/null | fzf +m) && cd "$dir"
}

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  colored-man-pages
  deno
  git
  pip
  python
  rust
  vscode
  web-search
  # other plugins...
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
 )

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# aliases added in the $ZSH_CUSTOM/aliases.zsh file

# Powerlevel 10k theme
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# for VsCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Mise
eval "$(mise activate zsh)"

# Homebrew Python
export PATH="/usr/local/opt/python@3/libexec/bin:$PATH"

# Homebrew git
export PATH="/usr/local/opt/git/bin:$PATH"

# Git branch opens in editor, like less, I'd like this disabled
export LESS=-FRX

# Homebrew llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"

# Local Rust
export PATH="$HOME/.cargo/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# fzf
source <(fzf --zsh)

# LS_COLORS
export LS_COLORS="$(vivid generate florin)"

# deno
. "$HOME/.deno/env"
