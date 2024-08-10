#!/usr/bin/env bash




#####
# BEFORE OS Specific Setup
#####




#####
# OS Specific Setup
#####
is_macos() {
  [[ "$OSTYPE" == "darwin"* ]]
}

is_linux() {
  [[ "$OSTYPE" == "linux-gnu"* ]]
}

if is_macos; then
  source ./setup_osx.sh
elif is_linux; then
  source ./setup_linux.sh
else
  echo "Error 654efd: What kind of OS is this???: $OSTYPE"
  exit 1
fi

#####
# AFTER OS Specific Setup
#####

stow .
