# Read every time.

# Default id for the only created user for everyday usage.
export USER_mine_ID="1000"
# Get name from the id.
export USER_mine="$(id -run ${USER_mine_ID})"

export EDITOR="kak"
export TZ=":/etc/localtime"
export XDG_CONFIG_HOME="${HOME}/.config"

# Should be in .zshenv for root applications use their own dir (but it's not working on their own).
# ...And .zshenv should be (link) in root directory, to be read.
# ...And 'export XDG_RUNTIME_DIR="/tmp/.runtime-${USER}"' will not show 'root' under 'su'.
# if [ $UID = 0]; fi
export XDG_RUNTIME_DIR="/tmp/.runtime-$(whoami)"
if [[ ! -d "${XDG_RUNTIME_DIR}" ]]; then
	mkdir --mode=0700 --parents "${XDG_RUNTIME_DIR}"
	if [[ ! -d "${XDG_RUNTIME_DIR}/kakoune" ]]; then
		mkdir --mode=0711 --parents "${XDG_RUNTIME_DIR}/kakoune/"
	fi
fi

# export QT_STYLE_OVERRIDE=kvantum
# export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

export __GL_SHADER_DISK_CACHE=1
# https://us.download.nvidia.com/XFree86/Linux-x86/180.22/README/chapter-11.html
# __GL_YIELD = NOTHING USLEEP unset
#__GL_YIELD=USLEEP
# export __GL_THREADED_OPTIMIZATIONS=1
export __GL_WRITE_TEXT_SECTION=1
export __GL_IGNORE_GLSL_EXT_REQS=1
# export __GL_SYNC_TO_VBLANK=0

export W_CACHE="/media/t3/Games/winetricks"

# Use "--literal" for 'ls' alias in .zshrc
# export QUOTING_STYLE=literal

export CARGO_HOME="/usr/local/src/rust/cargo"

# For use zsh aliases in vifm's :command
if [[ $VIFM ]]; then
	source "${HOME}/.zsh_alias.zsh"
fi
