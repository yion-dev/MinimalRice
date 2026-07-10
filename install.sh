set -e

echo "=================================="
echo "      MinimalRice Installer"
echo "=================================="

echo "Installing core packages..."
sudo pacman -S --needed --noconfirm \
  hyprland \
  polkit-gnome \
  dbus \
  xorg-xwayland \
  xdg-desktop-portal-hyprland \
  xdg-desktop-portal \
  xdg-desktop-portal-gtk \
  zsh \
  kitty \
  thunar \
  rofi \
  hyprshot \
  hyprlock \
  waybar \
  swww \
  pipewire \
  pipewire-pulse \
  wireplumber \
  playerctl \
  brightnessctl \
  unimatrix \
  cava \
  bpytop \
  mpv \
  fastfetch \
  git \
  stow \
  ttf-jetbrains-mono-nerd

echo "Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  export RUNZSH=no
  export KEEP_ZSHRC=yes
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh already installed, skipping."
fi

echo "Installing Powerlevel10k..."
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ ! -d "$P10K_DIR" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
else
  echo "Powerlevel10k already installed, skipping."
fi

echo "Installing zsh plugins..."
AUTOSUGGESTIONS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
SYNTAX_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

[ ! -d "$AUTOSUGGESTIONS_DIR" ] && git clone https://github.com/zsh-users/zsh-autosuggestions "$AUTOSUGGESTIONS_DIR"
[ ! -d "$SYNTAX_DIR" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SYNTAX_DIR"

if command -v yay &> /dev/null; then
  AUR_HELPER=yay
elif command -v paru &> /dev/null; then
  AUR_HELPER=paru
else
  AUR_HELPER=""
fi

if [ -n "$AUR_HELPER" ]; then
  echo "Installing AUR dependencies with $AUR_HELPER..."
  $AUR_HELPER -S --needed --noconfirm polkit-gnome
else
  echo "No AUR helper found. Skipping AUR-only packages (if any). Install yay or paru if you hit missing package errors."
fi

echo "Symlinking dotfiles with Stow..."
STOW_TARGET="$HOME"
STOW_PACKAGES="hyprland waybar kitty rofi fastfetch bpytop zsh"

for pkg in $STOW_PACKAGES; do
  stow -t "$STOW_TARGET" "$pkg"
  echo "  -> stowed $pkg"
done

echo "=================================="
echo " Installation complete!"
echo "=================================="
echo "Log out and select Hyprland from your login manager to start."
echo "Open a new terminal to see your zsh + Powerlevel10k prompt."
