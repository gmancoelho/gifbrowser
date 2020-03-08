FASTLANE=$(BUNDLE) exec fastlane

## Carthage 

FRAMEWORKS_FOLDER=Carthage/PreBuiltFrameworks
CARTHAGE_FRAMEWORKS=ls Carthage/Build/iOS/*.framework | grep "\.framework" | cut -d "/" -f 4 | cut -d "." -f 1 | xargs -I '{}'

carthage_bootstrap: ## bootstrap carthage frameworks
	carthage bootstrap --platform iOS --no-use-binaries --cache-builds

carthage_clean: ## clean carthage artifacts
	-rm -rf Carthage
	-rm -rf $(CARTHAGE_CACHE_FOLDER)
	-mkdir -p $(FRAMEWORKS_FOLDER)

carthage_update: ## update carthage packages
	carthage update --platform iOS --no-use-binaries

## Setup
setup:
	cd scripts && ./setup.sh all && cd ..
	@echo "\033[1;33m"
	@echo "-----------------------------------------------------------"
	@echo "Restart all your terminals to ensure the setup takes effect"
	@echo "-----------------------------------------------------------"
	@echo "\033[0m"

reset_simulator: ## reset the iPhone simulator
	osascript -e 'tell application "Simulator" to quit'
	xcrun simctl shutdown all
	xcrun simctl erase all

	FASTLANE=$(BUNDLE) exec fastlane

## Framework CI Steps

	