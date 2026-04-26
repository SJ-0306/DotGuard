#!/bin/bash
OUTPUT_FILE="/var/lib/node_exporter/textfile_collector/dotguard.prom"
> "$OUTPUT_FILE"

declare -A CONFIGS=(
    ["kitty"]="$HOME/.config/kitty/kitty.conf"
    ["hyprland"]="$HOME/.config/hypr/hyprland.conf"
    ["bashrc"]="$HOME/.bashrc"
    ["waybarconfig"]="$HOME/.config/waybar/config.jsonc"
    ["waybarcolor"]="$HOME/.config/waybar/colors.css"
    ["waybarstyle"]="$HOME/.config/waybar/style.css"
)

for NAME in "${!CONFIGS[@]}"; do
    PERMS=$(stat -c "%a" "${CONFIGS[$NAME]}" 2>/dev/null || echo "0")
    echo "dotguard_config_permissions{file=\"$NAME\"} $PERMS" >> "$OUTPUT_FILE"
done