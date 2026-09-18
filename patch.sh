#!/usr/bin/env bash

# shellcheck disable=2034
git clone --depth=1 https://github.com/termux/termux-packages.git
OLD='local url="https://github.com/Genymobile/scrcpy/releases/download/v${TERMUX_PKG_VERSION}/${scrcpy_server}"' NEW='local url="https://github.com/Willie169/scrcpy-6007-workaround/releases/download/v${TERMUX_PKG_VERSION}/${scrcpy_server}"' perl -0pi -E 's/\Q$ENV{OLD}\E/$ENV{NEW}/' termux-packages/x11-packages/scrcpy/build.sh
cat termux-packages/x11-packages/scrcpy/build.sh
