 KITTY_PERMS=$(stat -c "%a" /home/swami/.config/kitty/kitty.conf)

HYPR_PERMS=$(stat -c "%a" /home/swami/.config/hypr/hyprland.conf)

BASH_PERMS=$(stat -c "%a" /home/swami/.bashrc)

WAYBARCONFIG_PERMS=$(stat -c "%a" /home/swami/.config/waybar/config.jsonc)

WAYBARCOLOR_PERMS=$(stat -c "%a" /home/swami/.config/waybar/colors.css)

WAYBARSTYLE_PERMS=$(stat -c "%a" /home/swami/.config/waybar/style.css)


echo "dotguard_config_permissions{file=\"kitty\"} $KITTY_PERMS" > /var/lib/node_exporter/textfile_collector/dotguard.prom

echo "dotguard_config_permissions{file=\"hyprland\"} $HYPR_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom

echo "dotguard_config_permissions{file=\"bashrc\"} $BASH_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom

echo "dotguard_config_permissions{file=\"waybarconfig\"} $WAYBARCONFIG_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom

echo "dotguard_config_permissions{file=\"waybarcolor\"} $WAYBARCOLOR_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom

echo "dotguard_config_permissions{file=\"waybarstyle\"} $WAYBARSTYLE_PERMS" >> /var/lib/node_exporter/textfile_collector/dotguard.prom