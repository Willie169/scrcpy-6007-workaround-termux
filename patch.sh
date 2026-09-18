#!/usr/bin/env bash

# shellcheck disable=2034
git clone --depth=1 https://github.com/termux/termux-packages.git
PATCH="sed -Ei 's#^([[:space:]]*)(\|[[:space:]]*VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED)#\1// \2#' server/src/main/java/com/genymobile/scrcpy/video/NewDisplayCapture.java" CAT="server/src/main/java/com/genymobile/scrcpy/video/NewDisplayCapture.java" perl -0pi -E 's/(termux_step_post_get_source\(\) {\n)([ \t]*)/$1$2$ENV{PATCH}\n$2$ENV{CAT}\n$2/' termux-packages/x11-packages/scrcpy/build.sh
cat termux-packages/x11-packages/scrcpy/build.sh
