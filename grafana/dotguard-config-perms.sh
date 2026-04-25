
KITTY_PERMS=$(stat -c "%a" /home/swami/.config/kitty/kitty.conf)
HYPR_PERMS=$(stat -c "%a" /home/swami/.config/hypr/hyprland.conf)


echo "dotguard_config_permissions{file=\"kitty\"} $KITTY_PERMS" > /var/lib/node_exporter/textfile_collector/dotguard.prom
echo "dotguard_config_permissions{file=\"hyprland\"} $HYPR_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom