#!/bin/sh
HERE="$(dirname "$(readlink -f "${0}")")"
export LD_LIBRARY_PATH=/usr/lib  # 注意这里的变化
export QT_PLUGIN_PATH="${HERE}"/plugins
export QT_QPA_PLATFORM_PLUGIN_PATH="${HERE}"/plugins/platforms
exec "${HERE}"/netease-cloud-music $@
