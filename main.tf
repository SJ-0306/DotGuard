resource "local_file" "kitty_config" {
  filename = var.kitty_config_path
  content  = file("${path.module}/confs/kitty.conf")
}