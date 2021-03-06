# shell colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
export COLORTERM=truecolor
# set XDG spec variables
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_RUNTIME_DIR="${HOME}/.local/run"
# set zsh home directory
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# set vim/nvim initial script
export VIMINIT='let $VIMINIT = has("nvim") ? "${XDG_CONFIG_HOME}/nvim/init.lua" : "${XDG_CONFIG_HOME}/vim/vimrc" | source $VIMINIT'
# set ncurses configs
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${XDG_DATA_HOME}/terminfo"
# set less history file location
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"
# set docker configs
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
# set kubernetes configs
export KUBECONFIG="${XDG_CONFIG_HOME}/kube/config"
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"
# set minikube configs
export MINIKUBE_HOME="${XDG_CONFIG_HOME}/minikube"
# set vagrant configs
export VAGRANT_HOME="${XDG_CONFIG_HOME}/vagrant"
export VAGRANT_ALIAS_FILE="${XDG_CONFIG_HOME}/vagrant/aliases"
# set terraform configs
export TF_CLI_CONFIG_FILE="${XDG_CONFIG_HOME}/terraform/terraform.tfrc"
# set vault configs
export VAULT_TOKEN=`cat "${XDG_CONFIG_HOME}/vault/.vault-token"`
# set ansible configs
export ANSIBLE_VAULT_PASSWORD_FILE="${HOME}/.ansible/.keyfile"
# set go configs
export GOPATH="${HOME}/Projects/go"
# set pipenv configs
export PIPENV_VENV_IN_PROJECT=1
# set bundler configs
export BUNDLE_USER_CONFIG="${XDG_CONFIG_HOME}/bundle"
export BUNDLE_USER_CACHE="${XDG_CACHE_HOME}/bundle"
export BUNDLE_USER_PLUGIN="${XDG_DATA_HOME}/bundle"
# set ruby configs
export GEM_HOME="${XDG_DATA_HOME}/gem"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"
# set nvm configs
export NVM_DIR="${XDG_DATA_HOME}/nvm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export NODE_REPL_HISTORY="${XDG_STATE_HOME}/node/repl_history"
# set nuget configs
export NUGET_PACKAGES="${XDG_DATA_HOME}/nuget/packages"
export NUGET_HTTP_CACHE_PATH="${XDG_CACHE_HOME}/nuget"
export NUGET_PLUGINS_CACHE_PATH="${XDG_CACHE_HOME}/nuget/plugins"
# set maven configs
export MAVEN_REPOSITORY="${XDG_DATA_HOME}/m2/repository"
# set gradle configs
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

# set neovim as default editor
export EDITOR=nvim
export VISUAL=nvim

unsetopt MULTIOS
setopt MAGIC_EQUAL_SUBST
setopt BSD_ECHO
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt VI

# ssh agent
if [ -z "${SSH_AUTH_SOCK}" ] ; then
	eval `ssh-agent -P "${HOMEBREW_PREFIX}/lib/*"` > /dev/null
fi
export SSH_AGENT_PID=${SSH_AGENT_PID:-`pgrep -x ssh-agent`}
if [[ `ssh-add -l` = *"agent has no identities"* ]] ; then
	ssh-add "${HOME}/.ssh/id_rsa"
fi

# zsh extensions
source "${ZDOTDIR}/extensions/git-aware-prompt/main.sh"
source "${ZDOTDIR}/extensions/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${ZDOTDIR}/extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${ZDOTDIR}/extensions/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

# zsh extensions configs
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main root brackets)

# end
