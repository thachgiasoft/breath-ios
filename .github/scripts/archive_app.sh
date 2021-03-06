#!/bin/bash

set -eo pipefail

xcodebuild -project Count\ my\ breaths.xcodeproj \
            -scheme Count\ my\ breaths \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/Count\ my\ breaths.xcarchive \
            -allowProvisioningUpdates \
            clean archive | xcpretty
