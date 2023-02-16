#
# ~/.bashrc
#

# Environment variables
export _JAVA_AWT_WM_NONREPARENTING=1

# Nvidia
export NVD_BACKEND="direct"
export LIBVA_DRIVER_NAME="nvidia"
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1
export GDK_BACKEND=wayland
export SDL_VIDEDRIVER=wayland
export XDG_BACKEND=wayland
export XDG_SESSION_DESKTOP=Hyprland


#Cursor
export XCURSOR_SIZE=24

#QT
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QTWEBENGINE_CHROMIUM_FLAGS="--disable-seccomp-filter-sandbox --no-sandbox"

# Firefox
export MOZ_DBUS_REMOTE=1
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_ENABLE_WAYLAND=1

#Exa
export EXA_ICON_SPACING=2

# Aliases
alias ls='exa -la --icons'
alias ll="exa -l --icons"
alias la="exa -Ga --icons"
alias lt="exa -lT --icons"
alias lta="exa -lTa --icons"

alias code='code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland'
alias warp="warp-cli"


# Starship prompt
eval "$(starship init bash)"

# Node version manager
eval "$(fnm env --use-on-cd)"


# BEGIN KITTY SHELL INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR"; then
    export KITTY_SHELL_INTEGRATION="enabled"
    source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi
# END KITTY SHELL INTEGRATION

