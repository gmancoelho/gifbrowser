#!/usr/bin/env bash

# Terminate the script if has any error
set -e

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Step 1: Check if the Xcode is present
if [[ "$(xcodebuild -version)" == *"10"* || "$(xcodebuild -version)" == *"11"*  ]]; then
    echo -e "${GREEN}XCode is on the version 10.1${NC} or higher"
else
   echo -e "${RED}You need to upgrade your XCode to version 10.1 or higher${NC}"
   exit 1 
fi