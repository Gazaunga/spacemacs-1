# Disable access control
xhost +SI:localuser:$USER

# Make Java applications aware this is a non-reparenting window manager.
export _JAVA_AWT_WM_NONREPARENTING=1

# Themes, etc
#gnome-settings-daemon &

# Fallback cursor
xsetroot -cursor_name left_ptr

# Keyboard repeat rate
xset r rate 200 60

xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC

export VISUAL=emacsclient
export EDITOR="$VISUAL"
export TERM="xterm"
export DISPLAY=:0

xfce4-power-manager &
xscreensaver -no-splash &
nm-applet &                     # Network Manager
pulseaudio --kill               # Kill pulseaudio
pulseaudio --start              # Start pulseaudio
volti &                         # Volume manager
udiskie --no-notify --tray &    # Disk mount utility

# Start Emacs
#exec dbus-launch --exit-with-session emacs --eval "(exwm-enable)"
#exec dbus-launch --exit-with-session emacs -fs --eval "(exwm-enable)"
exec emacs -fs --eval "(exwm-enable)"
