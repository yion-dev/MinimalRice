<h1 align="start">MinimalRice (My Old Config)</h1>

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

<h2>Prerequisites</h2>
<p>To get this Hyprland setup working as intended, you'll need the following installed on Arch Linux (or similar).</p>

<h3>Core System & Desktop Environment</h3>
<ul>
  <li><b>Hyprland</b> — the Wayland compositor</li>
  <li><b>Polkit Agent</b> — <code>polkit-gnome</code> (<code>polkit-gnome-authentication-agent-1</code>)</li>
  <li><b>dbus</b> — for system services and environment variable propagation</li>
  <li><b>XWayland</b> — <code>xorg-xwayland</code>, for X11 app compatibility</li>
  <li><b>XDG Desktop Portals</b>
    <ul>
      <li><code>xdg-desktop-portal-hyprland</code></li>
      <li><code>xdg-desktop-portal</code></li>
      <li><code>xdg-desktop-portal-gtk</code> (if using GTK apps)</li>
    </ul>
  </li>
  <li><b>Login Manager</b> <i>(optional)</i> — SDDM, GDM, or LightDM configured for Hyprland sessions</li>
</ul>

<h3>Shell & Utilities</h3>
<ul>
  <li><b>Zsh</b></li>
  <li><b>Oh My Zsh</b> — required if <code>.zshrc</code> relies on it for plugins/themes</li>
  <li><b>Powerlevel10k</b> — Zsh theme (<code>p10k</code>)</li>
</ul>

<h3>Custom Programs & Scripts</h3>
<ul>
  <li><b>Terminal:</b> <code>kitty</code></li>
  <li><b>File Manager:</b> <code>thunar</code></li>
  <li><b>App Launcher:</b> <code>rofi</code></li>
  <li><b>Screenshot:</b> <code>hyprshot</code></li>
  <li><b>Screen Locker:</b> <code>hyprlock</code></li>
  <li><b>Status Bar:</b> <code>waybar</code></li>
  <li><b>Wallpaper:</b> <code>swww</code></li>
  <li><b>Audio:</b> <code>pipewire</code>, <code>pipewire-pulse</code>, <code>wireplumber</code> (<code>wpctl</code>)</li>
  <li><b>Media Control:</b> <code>playerctl</code></li>
  <li><b>Brightness:</b> <code>brightnessctl</code></li>
  <li><b>Terminal Animations/Monitors:</b> <code>unimatrix</code>, <code>cava</code>, <code>bpytop</code></li>
  <li><b>Media Player:</b> <code>mpv</code> (for GIF playback)</li>
  <li><b>Custom Scripts:</b>
    <ul>
      <li><code>theme-switcher.sh</code> → <code>~/Documents/themes/theme-switcher.sh</code> (update path if needed)</li>
      <li><code>powermenu.sh</code> → <code>~/.config/rofi/powermenu.sh</code> (update path if needed)</li>
    </ul>
  </li>
  <li><b>Image Assets:</b> <code>wallpaper.jpg</code>, <code>lain.gif</code> (same directory
