
resource "local_file" "dotfiles" {
  for_each        = var.dotfiles
  filename        = each.value.destination_path
  content         = file("${path.module}/${each.value.source_path}")
  file_permission = each.value.mode
}
