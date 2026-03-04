#!/bin/bash
set -e

xcodebuild -scheme clive -configuration Debug build \
    CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO \
    2>&1 | tail -3

pkill -x Clive 2>/dev/null || true
sleep 1

open "$(xcodebuild -scheme clive -configuration Debug -showBuildSettings 2>/dev/null \
    | grep -m1 'BUILT_PRODUCTS_DIR' | awk '{print $3}')/Clive.app"
