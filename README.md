<h1 align="center">MinimalRice (My Old Config)</h1>

<table align="center">
  <tr>
    <td colspan="2"><img src="https://github.com/user-attachments/assets/d7fb271d-07dd-4830-af19-91ced39ef8b9"></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/d0d0d596-f04f-4eb5-b335-e4a0326befdb"></td>
    <td><img src="https://github.com/user-attachments/assets/ad006f3b-065d-46ba-a7a6-e406bbeefaf7"></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/892fec36-fa8f-47cc-bb52-5a88d58ea00c"></td>
    <td><img src="https://github.com/user-attachments/assets/e70bebab-9419-4fc7-83b6-3de163aaef0e"></td>
  </tr>
</table>

## About

MinimalRice is my old Hyprland rice — dark, minimal, terminal-heavy. It uses Hyprland as the compositor, Waybar for the status bar, Kitty as the terminal, Rofi for the launcher/powermenu, Zsh + Powerlevel10k for the shell, and a few terminal monitors (Cava, Unimatrix, BpyTOP) running as floating panels on startup.

I'm not actively using this setup day-to-day anymore, but it's fully working and set up to be usable by anyone who wants to try it.

## Prerequisites

- Arch Linux (or an Arch-based distro)
- An AUR helper (`yay` or `paru`) — optional, only needed for a couple of packages
- A login manager (SDDM, GDM, LightDM) configured to launch Hyprland sessions, or the ability to start Hyprland manually from a TTY

## Installation

Clone the repo:
```bash
git clone https://github.com/yion-dev/MinimalRice.git
cd MinimalRice
```

Run the install script:
```bash
chmod +x install.sh
./install.sh
```

This will:
1. Install all required packages via `pacman`
2. Install Oh My Zsh, Powerlevel10k, and the Zsh plugins used
3. Symlink all configs into place using GNU Stow

Once it finishes, log out and select **Hyprland** from your login manager (or launch it manually from a TTY).

## Manual Installation

If you'd rather do it step by step instead of running the script:

**1. Install packages:**
```bash
sudo pacman -S --needed hyprland polkit-gnome dbus xorg-xwayland \
  xdg-desktop-portal-hyprland xdg-desktop-portal xdg-desktop-portal-gtk \
  zsh kitty thunar rofi hyprshot hyprlock waybar swww \
  pipewire pipewire-pulse wireplumber playerctl brightnessctl \
  unimatrix cava bpytop mpv fastfetch git stow ttf-jetbrains-mono-nerd
```

**2. Install Oh My Zsh:**
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**3. Install Powerlevel10k:**
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

**4. Install Zsh plugins:**
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

**5. Symlink dotfiles with Stow:**
```bash
stow -t ~ hyprland waybar kitty rofi fastfetch bpytop zsh
```
## Uninstalling / Un-symlinking

To remove the symlinks for any package without deleting your repo files:
```bash
stow -D -t ~ <package_name>
```
Example:
```bash
stow -D -t ~ rofi
```

## Customization

- **Wallpaper:** replace `hyprland/.config/hypr/wallpaper.jpg` with your own image (same filename, or update the path in `hyprland.conf`)
- **Lain GIF panel:** replace `hyprland/.config/hypr/lain.gif`, or remove the corresponding `exec-once = mpv ...` line in `hyprland.conf` if you don't want it
- **Fonts:** this rice uses `JetBrainsMono Nerd Font Mono`. If you use a different Nerd Font, update `font_family` in `kitty/.config/kitty/kitty.conf`
- **Rofi theme:** colors and layout are in `rofi/.config/rofi/*.rasi`

## Keybindings (Hyprland)

| Keybind | Action |
|---|---|
| `Alt + Return` | Open terminal |
| `Alt + Q` | Close active window |
| `Alt + X` | Open app launcher (Rofi) |
| `Alt + Z` | Open powermenu |
| `Alt + F` | Toggle floating |
| `Super + F` | Toggle fullscreen |
| `Super + E` | Open file manager |
| `Super + L` | Lock screen |
| `Super + K` | Kill Waybar |
| `Super + J` | Restart Waybar |
| `Alt + F1` | Screenshot (region) |
| `Alt + 1-5` / `Ctrl + 1-5` | Switch workspace |
| `Super + 1-5` / `Ctrl+Shift + 1-5` | Move window to workspace |

## Credits

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- Rofi theme adapted from community Rofi collections

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

<div align="center">
  <img src="assets/important.gif" alt="Lain_dance">
</div>
