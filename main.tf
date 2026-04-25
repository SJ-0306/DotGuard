
resource "local_file" "dotfiles" {
  for_each = var.dotfiles
  filename = each.value.destination_path
  content = file("${path.module}/${each.value.source_path}")
}




/*
resource "local_file" "kitty_config" {
  filename = var.kitty_config_path
  content  = file("${path.module}/confs/kitty.conf")
}


resource "local_file" "bashrc_config" {
  filename = var.bash_config_path
  content  = file("${path.module}/confs/.bashrc")
}

resource "local_file" "hyprland_config" {
  filename = var.hyprland_config_path
  content  = file("${path.module}/confs/hyprland.conf")
}
*/