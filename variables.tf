variable "dotfiles" {
  type = map(object({
    source_path = string
    destination_path = string
  }))
}
