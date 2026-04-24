variable "kitty_config_path" {
  type        = string
  default     = "/home/swami/.config/kitty/kitty.conf"
  description = "config path to kitty term "
}

variable "bash_config_path" {
  type        = string
  default     = "/home/swami/.bashrc"
  description = "config path to bashrc"
}

variable "hyprland_config_path" {
  type        = string
  default     = "/home/swami/.config/hypr/hyprland.conf"
  description = "config path to hyprland config "
}
