#   ______        __               _           __     __  _____ __
#  / __/ /  ___ _/ /  ___ ___ ___ ( )___   ___/ /__  / /_/ __(_) /__ ___
# _\ \/ _ \/ _ `/ _ \/ -_) -_) _ \|/(_-<  / _  / _ \/ __/ _// / / -_|_-<
#/___/_//_/\_,_/_//_/\__/\__/_//_/ /___/  \_,_/\___/\__/_/ /_/_/\__/___/


###############
#  Utils
###############
# Function to check if the operating system is macOS
is_macos() {
  [[ "$OSTYPE" == "darwin"* ]]
}

is_linux() {
  [[ "$OSTYPE" == "linux"* ]]
}

###############
#  Homebrew
###############
if is_macos; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

###############
#  P10K Theme
#  https://github.com/romkatv/powerlevel10k#oh-my-zsh
###############

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############
#  Oh-my-ZSH
###############
export ZSH="~/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
plugins=(git)


###############
#
#  Z Configuration
#
###############
# Installation Instructions:
#    brew install z
# source /usr/local/etc/profile.d/z.sh (used to be this during x86 cpus)
source /opt/homebrew/etc/profile.d/z.sh


###############
#
#  Aliases
#
###############
alias o="open ."
alias ls="eza -la"
alias reload="source ~/.zshrc"
alias matebash="mate ~/.zshrc"
alias mategit="mate ~/.gitconfig"
alias matehg="mate ~/.hgrc"
alias cddev="cd ~/Dev"
alias cdgroupon="cd ~/Dev/G/"
alias cdsync="cd ~/Sync"

# From: https://gist.github.com/SheldonWangRJT/8d3f44a35c8d1386a396b9b49b43c385
# Need to install first: `brew install ffmpeg; brew install gifsicle`
alias v2g='function video_to_gif(){ ffmpeg -i $1 output.gif && gifsicle -O3 output.gif -o output.gif && say "Video is ready!"};video_to_gif'

################
# SSH Aliases
################
alias rmhosts="rm ~/.ssh/known_hosts"
alias rmknown="rm ~/.ssh/known_hosts"
alias mateconfig="mate ~/.ssh/config"
alias restartssh="sudo launchctl stop com.openssh.sshd"
alias sshrestart="sudo launchctl stop com.openssh.sshd"
alias matessh="mateconfig"

################
# Homebrew
################
alias brew86="arch -x86_64 /usr/local/homebrew/bin/brew"
alias brew8="brew86"
alias brewARM="/opt/homebrew/bin/brew"
alias brewarm="brewARM"

################
# GIT Aliases
################
alias gg="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"
alias ga="git add --all "
alias gc="git checkout"
alias gcm="git commit -m "
alias gcf="git clean -dfx"
alias gfc="git clean -dfx"
alias gd="git diff"
alias gdone="git commit -m 'WIP' && git push"
alias gdm="git diff | mate"
alias gdc="git diff --cached"
alias gdcm="git diff --cached | mate"
alias gitdiffcachedmate="git diff --cached | mate"
alias grh="git reset HEAD"
alias gs="git status"
alias gp="git push origin -u"
alias gb="git branch"
alias grh1="git reset HEAD~1"
alias grh2="git reset HEAD~2"
alias gr="git rebase"
alias gceg="git config user.email shaheen@groupon.com"
alias gcep="git config user.email shaheen.ghiassy@gmail.com"
alias pack="cat package.json | jq '.[\"scripts\"]'"

################
# Mercurial Aliases
################
# alias gh="hg "


################
# Sapling Aliases
################
alias sls="sld; echo '\n'; sl status; echo '\n'; sl"
alias sld="sl diff"
alias sldm="sl diff | mate"
alias sla="sl add ."
alias slc="sl commit -m "
alias slsh="sl shelve"
alias slush="sl unshelve"
alias slb="sl bookmark "
alias slbd="sl bookmark --delete "
alias slg="sl goto "
alias slf="sl fold --from "



################
# GitIgnore File
################
function gitignore() {
	echo "# Gist at: https://gist.github.com/sghiassy/e14593a439a03028b98a

##### Python
.venv
.env

##### Mercurial
.hg

##### OSX
.DS_Store

##### Xcode
build/
*.pbxuser
!default.pbxuser
*.mode1v3
!default.mode1v3
*.mode2v3
!default.mode2v3
*.perspectivev3
!default.perspectivev3
xcuserdata
*.xccheckout
*.moved-aside
DerivedData
*.hmap
*.ipa
*.xcuserstate
project.xcworkspace

#### Fastlane
fastlane/report.xml
fastlane/test_output/*

##### node.js
node_modules
jspm_packages
npm-debug.log
yarn-error.log

##### Code Editor Settings
.idea/
.vscode/

##### Java/Android
.classpath
.externalNativeBuild
.gradle
.project
*.class
*.iml
/.idea/libraries
/.idea/workspace.xml
/.settings/
/bin/
/build
/captures
/local.properties
*.jar
*.war
*.ear

#### Selenium
selenium-debug.log
test/reports/*
test/screenshots/*

### Serverless
.serverless

# Carthage
framework/Carthage

# Natrium
ios/Example/Pods/Natrium/bin/natrium.log
ios/Example/Pods/Natrium/bin/natrium.lock

### Webpack
.webpack" >.gitignore
}

################
# Flutter
################
export PATH="$PATH:/Users/sghiassy/Dev/Flutter/bin"


################
#  Set GREP Default Configuration (GREP doesn't have a config file)
################
export GREP_OPTIONS='--color=auto --exclude-dir=.git --ignore-case'

################
# Xcode Aliases
################
alias xcode="open *.xcodeproj"
alias xcodew="open *.xcworkspace"
alias clean="rm -rf ~/Library/Developer/Xcode/DerivedData/*"
alias nuke="rm -rf ~/.cocoapods && rm -rf ~/.gradle && rm -rf ~/Library/Caches/Cocoapods && rm -rf ~/Library/Developer/Xcode/DerivedData && rm -rf ~/local-repo && rm -rf /tmp/ModuleCache.noindex && sudo rm -rf /private/var/tmp/_bazel_* && rm -rf ~/.bw/cache/ && bazel clean --expunge"
alias cdclean="cd ~/Library/Developer/Xcode/DerivedData/"

###################
# Groupon Aliases
###################
alias cdag="change_directory AirGap"
alias cddd="change_directory dealdetails.groupon.mobile"
alias cdch="change_directory checkout.groupon.mobile"
alias cdan="change_directory Antenna"
alias cdi8="change_directory i18n"
alias cdi8n="change_directory i18n"
alias cdmg="change_directory mobileGIG"
alias cdmga="change_directory MGA"
alias cdbc="change_directory Business-Cat"
alias cdpv="change_directory PureView"
alias cdma="change_directory mobile-api-specs"
alias cdsm="change_directory smart_contracts"
alias cdsmart="change_directory smart_contracts"
alias cdnst="change_directory GPNST"
alias cdns="change_directory GPNST"
alias cdde="change_directory device"
alias cddevice="change_directory device"
alias cdgu="change_directory GrouponUtils"
alias cdutil="change_directory GrouponUtils"
alias cdra="change_directory GPRaptorEngine"
alias cdrap="change_directory GPRaptorEngine"

# sets ttl to 65 to bypass verizon
alias ttl="sudo sysctl -w net.inet.ip.ttl=65"

function change_directory() {
  if [ -d $1 ]; then
    cd $1
  else
    cd ../$1
  fi
}


###################
# Android Setup
###################
alias ast="open -a /Applications/Android\ Studio.app"
alias ats="open -a /Applications/Android\ Studio.app"
export ANDROID_HOME=/Users/sghiassy/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle
export PATH=${PATH}:$ANDROID_NDK

# ###################
# # Python PyEnv (switched to using Poetry... https://stackoverflow.com/a/73365831/1179897)
# ###################
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"


###################
# AWS CLI
###################
export PATH=~/.local/bin:$PATH # from AWS-CLI instructions https://docs.aws.amazon.com/cli/latest/userguide/cli-install-macos.html

###################
# Vagrant
###################
export VAGRANT_DEFAULT_PROVIDER="virtualbox"

###################
# Postgres
###################
export PATH=/Library/PostgreSQL/15/bin:$PATH

###################
# NVM
###################
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

alias setnvm="node -v > .nvmrc"
alias nvmset="setnvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




###############
#
#  Volta
#
###############
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

###############
#
#  Google Cloud SDK
#
###############
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sghiassy/Library/Mobile\ Documents/com~apple~CloudDocs/aaa/Dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sghiassy/Library/Mobile\ Documents/com~apple~CloudDocs/aaa/Dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sghiassy/Library/Mobile\ Documents/com~apple~CloudDocs/aaa/Dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sghiassy/Library/Mobile\ Documents/com~apple~CloudDocs/aaa/Dev/google-cloud-sdk/completion.zsh.inc'; fi


###############
#
#  SDKMan
#  THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#
###############
export SDKMAN_DIR="/Users/sghiassy/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sghiassy/.sdkman/bin/sdkman-init.sh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


