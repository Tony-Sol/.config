# set XDG Base Directory Specification
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_BIN_HOME="${XDG_BIN_HOME:-${HOME}/.local/bin}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-${HOME}/.local/run}"
# set zsh config home
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# =====================================================================

if [ -f "${ZDOTDIR}/.zshenv.before" ]; then
	source "${ZDOTDIR}/.zshenv.before"
fi

# =====================================================================

# set XDG User Directories Specification
export XDG_DESKTOP_DIR="${XDG_DESKTOP_DIR:-${HOME}/Desktop}"
export XDG_DOCUMENTS_DIR="${XDG_DOCUMENTS_DIR:-${HOME}/Documents}"
export XDG_DOWNLOAD_DIR="${XDG_DOWNLOAD_DIR:-${HOME}/Downloads}"
export XDG_MUSIC_DIR="${XDG_MUSIC_DIR:-${HOME}/Music}"
export XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-${HOME}/Pictures}"
export XDG_PUBLICSHARE_DIR="${XDG_PUBLICSHARE_DIR:-${HOME}/Public}"
export XDG_TEMPLATES_DIR="${XDG_TEMPLATES_DIR:-${HOME}/Templates}"
export XDG_VIDEOS_DIR="${XDG_VIDEOS_DIR:-${HOME}/Videos}"
# shell colors
export CLICOLOR=1
export COLORTERM=truecolor
# set zsh configs
export ZLE_RPROMPT_INDENT=0
export HISTFILE="${ZDOTDIR}/.zsh_history"
export HISTSIZE=200000
export SAVEHIST=200000
export TERM="tmux-256color" # "xterm-256color"
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${XDG_DATA_HOME}/terminfo:${TERMINFO_DIRS}"
export WORDCHARS='*?[]~=&!#$%^(){}<>'
# set system dependent configs
case $(uname -s) in
	[Dd]arwin )
		export LSCOLORS=GxFxCxDxBxegedabagacad
		export HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-/opt/homebrew}"
		;;
	[Ll]inux )
		export LS_COLORS="di=1;36:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
		export HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-/home/linuxbrew/.linuxbrew}"
		;;
esac
# set homebrew configs
export HOMEBREW_REPOSITORY="${HOMEBREW_REPOSITORY:-$HOMEBREW_PREFIX/Homebrew}"
export HOMEBREW_LIBRARY="${HOMEBREW_LIBRARY:-$HOMEBREW_REPOSITORY/Library}"
export HOMEBREW_CELLAR="${HOMEBREW_CELLAR:-$HOMEBREW_PREFIX/Cellar}"
# set tmux configs
export TMUX_CONF="${XDG_CONFIG_HOME}/tmux/tmux.conf"
# set vim/nvim initial script
export VIMINIT='let $VIMINIT = has("nvim") ? "${XDG_CONFIG_HOME}/nvim/init.lua" : "${XDG_CONFIG_HOME}/vim/vimrc" | source $VIMINIT'
export MASON_BIN="${XDG_DATA_HOME}/nvim/mason/bin"
# set wget configs
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
# set less history file location
export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"
# set ripgrep configs
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgrep/config"
# set sqlite configs
export SQLITE_HISTORY="${XDG_CACHE_HOME}/sqlite/history"
# set fzf configs
export FZF_TMUX_OPTS="-p60%,80%"
export FZF_DEFAULT_COMMAND="fd --follow --hidden"
export FZF_DEFAULT_OPTS="--multi --cycle --keep-right --height=40% --layout=reverse --border --info=inline --ansi --preview='[[ -f {} ]] && [[ \$(file --brief --dereference --mime-type {}) =~ text ]] && bat --color=always --style=numbers --line-range=:200 {}'"
export FZF_CTRL_T_COMMAND="fd --type file --type symlink --type socket --follow --hidden"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:100 {} | head -200'"
export FZF_ALT_C_COMMAND="fd --type directory --follow --hidden"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
# set lima configs
export LIMA_HOME="${XDG_DATA_HOME}/lima"
# set docker configs
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export DOCKER_CLI_PLUGINS="${DOCKER_CONFIG}/cli-plugins"
# set kubernetes configs
export KUBEHOME="${XDG_DATA_HOME}/kube"
export KUBECONFIG="${KUBEHOME}/config"
export KUBECACHEDIR="${KUBEHOME}/cache"
# set kubernetes krew configs
export KREW_ROOT="${XDG_DATA_HOME}/krew"
export KREW_BIN="${KREW_ROOT}/bin"
# set minikube configs
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"
# set werf configs
export WERF_TMP_DIR="${XDG_CACHE_HOME}/werf"
export WERF_HOME="${XDG_CONFIG_HOME}/werf"
# set vagrant configs
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export VAGRANT_ALIAS_FILE="${VAGRANT_HOME}/aliases"
# set terraform configs
export TF_HOME_DIR="${XDG_DATA_HOME}/terraform"
export TF_CLI_CONFIG_FILE="${XDG_CONFIG_HOME}/terraform/terraform.tfrc"
# set vault configs
export VAULT_CONFIG_PATH="${XDG_CONFIG_HOME}/vault/.client.hcl"
export VAULT_ADDR="http://127.0.0.1:8200"
# set gnupg configs
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export GPG_TTY=$(tty)
# set ansible configs
export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"
export ANSIBLE_SSH_CONTROL_PATH_DIR="${ANSIBLE_HOME}/cp"
# set python configs
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"
# set virtualenv configs
export VIRTUALENV_CONFIG_FILE="${XDG_CONFIG_HOME}/virtualenv/config.toml"
# set pip configs
export PIP_CONFIG_FILE="${XDG_CONFIG_HOME}/pip/pip.conf"
# set poetry configs
export POETRY_CONFIG_DIR="${XDG_CONFIG_HOME}/pypoetry"
export POETRY_DATA_DIR="${XDG_DATA_HOME}/pypoetry"
export POETRY_CACHE_DIR="${XDG_CACHE_HOME}/pypoetry"
# set go configs
export GOPATH="${XDG_DATA_HOME}/go"
export GOBIN="${GOPATH}/bin"
# set bundler configs
export BUNDLE_USER_HOME="${XDG_DATA_HOME}/bundle"
export BUNDLE_USER_CACHE="${BUNDLE_USER_HOME}/cache"
export BUNDLE_USER_CONFIG="${BUNDLE_USER_HOME}/config"
export BUNDLE_USER_PLUGIN="${BUNDLE_USER_HOME}/plugin"
# set ruby configs
export GEM_HOME="${XDG_DATA_HOME}/gem"
export GEM_BIN="${GEM_HOME}/bin"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"
# set npm/node configs
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export NODE_REPL_HISTORY="${XDG_STATE_HOME}/node/repl_history"
# set mise configs
export MISE_CONFIG_DIR="${XDG_CONFIG_HOME}/mise"
export MISE_CACHE_DIR="${XDG_CACHE_HOME}/mise"
export MISE_DATA_DIR="${XDG_DATA_HOME}/mise"
export MISE_SHIMS="${MISE_DATA_DIR}/shims"
# set dotnet configs
export DOTNET_ROOT="/usr/local/share/dotnet"
export DOTNET_CLI_HOME="${XDG_DATA_HOME}/dotnet"
export DOTNET_CLI_TOOLS="${DOTNET_CLI_HOME}/tools"
# set nuget configs
export NUGET_PACKAGES="${XDG_DATA_HOME}/nuget/packages"
export NUGET_HTTP_CACHE_PATH="${XDG_CACHE_HOME}/nuget"
export NUGET_PLUGINS_CACHE_PATH="${XDG_CACHE_HOME}/nuget/plugins"
# set maven configs
export JAVA_HOME=$(java -XshowSettings:properties -version 2>&1 | grep java.home | grep -o '/.*')
export MAVEN_HOME="${XDG_DATA_HOME}/m2"
export MAVEN_REPOSITORY="${XDG_DATA_HOME}/m2/repository"
export MAVEN_ARGS="-gs ${XDG_CONFIG_HOME}/m2/settings.xml"
export M3_HOME="${MAVEN_HOME}"
export M2_HOME="${MAVEN_HOME}"
export M2="${M2_HOME}/bin"
# set gradle configs
export GRADLE_HOME="${XDG_DATA_HOME}/gradle"
export GRADLE_USER_HOME="${GRADLE_HOME}"
# set luarocks configs
export LUAROCKS_CONFIG="${XDG_CONFIG_HOME}/luarocks/config.lua"
# set composer configs
export COMPOSER_HOME="${XDG_CONFIG_HOME}/composer"
export COMPOSER_CACHE_DIR="${XDG_CACHE_HOME}/composer"
# set mutagen configs
export MUTAGEN_DATA_DIRECTORY="${XDG_DATA_HOME}/mutagen"
# set code configs
export VSCODE_EXTENSIONS="${XDG_DATA_HOME}/code/extensions"
# set teleport configs
export TELEPORT_CONFIG_FILE="${XDG_CONFIG_HOME}/teleport/tctl.yaml"
export TELEPORT_HOME="${XDG_DATA_HOME}/tsh"
export TELEPORT_GLOBAL_TSH_CONFIG="${XDG_CONFIG_HOME}/teleport/tsh.yaml"
# set tart configs
export TART_HOME="${XDG_DATA_HOME}/tart"
# set glab configs
export GLAB_CONFIG_DIR="${XDG_CONFIG_HOME}/glab-cli"
export GH_CONFIG_DIR="${XDG_CONFIG_HOME}/gh"

# set default tools
export EDITOR=nvim
export VISUAL=nvim

unsetopt MULTIOS
setopt EMACS
setopt MAGIC_EQUAL_SUBST
setopt BSD_ECHO
setopt SH_WORD_SPLIT
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# zsh extensions
source "${ZDOTDIR}/extensions/git-aware-prompt/main.sh"
source "${ZDOTDIR}/extensions/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
source "${ZDOTDIR}/extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
source "${ZDOTDIR}/extensions/zsh-lazyload/zsh-lazyload.plugin.zsh"

# zsh extensions configs
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main root brackets)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=3"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=3"

# =====================================================================

if [ -f "${ZDOTDIR}/.zshenv.after" ]; then
	source "${ZDOTDIR}/.zshenv.after"
fi
