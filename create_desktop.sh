APP_NAME="Raptor"
DESKTOP_FILE="$HOME/.local/share/applications/raptor.desktop"
ICON="utilities-terminal"  # You can change this to any valid icon name or path
TERMINAL="true"           # Set to false if you don't want a terminal window
SCRIPT_PATH="wine $HOME/Downloads/raptor_avalonia/publish/raptor.exe"
# Create the .desktop file
cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=$APP_NAME
Comment=Run raptor using wine
Exec=$SCRIPT_PATH
Icon=$ICON
Terminal=$TERMINAL
Type=Application
Categories=Utility;
EOL

# Make the desktop file executable
chmod +x "$DESKTOP_FILE"

echo "Desktop launcher created at: $DESKTOP_FILE"
