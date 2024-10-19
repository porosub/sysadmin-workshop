provider "libvirt" {
  uri = "qemu+ssh://${var.libvirt_user}:${var.libvirt_passwd}@${var.libvirt_host}:${var.libvirt_port}/system"
}
