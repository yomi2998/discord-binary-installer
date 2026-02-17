mkdir -p "$HOME"/.local/bin/
mv disco "$HOME"/.local/bin/
mv undisco "$HOME"/.local/bin/
# Add ~/.local/bin to PATH if it's not already there
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME"/.bashrc
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME"/.zshrc
        echo "Added ~/.local/bin to PATH in .bashrc and .zshrc"
else
        echo "~/.local/bin is already in PATH"
echo "Complete."
