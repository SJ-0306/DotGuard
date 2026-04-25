variable "dotfiles" {
  type = map(object({
    source_path = string
    destination_path = string
    mode = optional(string, "0600")
  }))
}
