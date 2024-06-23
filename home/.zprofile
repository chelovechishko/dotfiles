# Read at login.
# Use 'exec zsh --login' to update settings from here.

# Fucking libcanberra
# /etc/X11/xinit/xinitrc.d/40-libcanberra-gtk-module
# Not working, just commented out that file.
# unset -v GTK_MODULES

export FONTCONFIG_FILE="/etc/fonts/fonts_my.conf"
export FONTCONFIG_USE_MMAP=1
export PAGER="less"
export XDG_CACHE_HOME="/tmp/.cache"
export XDG_DATA_DIRS="/usr/share"
export XDG_DATA_HOME="${HOME}/.local/share"
export XCOMPOSECACHE="${HOME}/.cache/compose-cache"
export XCOMPOSEFILE="${HOME}/.local/share/xorg/.XCompose"

# Not need it anymore. And gtk firstly looks at adwaita theme nevertheless.
# export XCURSOR_PATH="${XDG_DATA_HOME}/cursors:/usr/share/cursors/xorg-x11/"
export XCURSOR_PATH="${XDG_DATA_HOME}/cursors"

export WESTON_CONFIG_FILE=${XDG_CONFIG_HOME}/weston.ini

# Not exists at login yet.
mkdir --parent ${XDG_CACHE_HOME}
if [ ! -L "${XDG_CACHE_HOME}/rofi-3.runcache" ]; then
	ln --symbolic "${XDG_CONFIG_HOME}/rofi/rofi-3.runcache" /tmp/.cache/rofi-3.runcache
fi
if [ ! -L "${XDG_CACHE_HOME}/keepassxc" ]; then
	ln --symbolic "${XDG_CONFIG_HOME}/keepassxc" /tmp/.cache/keepassxc
fi

# Dirty hack to run kakoune with configs of user even under root
# (and do not feel the pain using default configuration).
# It is the same directory for root too.
export KAKOUNE_CONFIG_DIR="${XDG_CONFIG_HOME}/kak/"

export LESSKEYIN="${XDG_CONFIG_HOME}/less/lesskey.source"
# Should be here, not in 'lesskey', as it will break pasring of later options.
export LESSHISTFILE=-

# Make ibus great again (it still will not be great).
export IBUS_ENABLE_CONTROL_SHIFT_U=1
# Have to be here.
export QT_IM_MODULE=ibus

# Never used, so commented out.
# export W3M_DIR="${XDG_CONFIG_HOME}/w3m"

# For disabling usage of d-bus for firefox.
# MOZ_NO_REMOTE="anything"

# Fucking python
# To disable creating ~/.python_history
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/.pythonrc"
