resource "libvirt_volume" "vm_disk" {
  name   = "vm_disk.qcow2"
  pool   = "share"
  source = "/var/lib/libvirt/Fedora-Cloud-Base-Generic.x86_64-40-1.14.qcow2"
  format = "qcow2"
}

resource "libvirt_network_interface" "vm_network" {
  network_name = "default"
  bridge       = "br0"
}

resource "libvirt_domain" "vm" {
  name   = "fedora-vm"
  memory = "2048" # Memory in MB
  vcpu   = 2

  disk {
    volume_id = libvirt_volume.vm_disk.id
  }

  network_interface {
    bridge = libvirt_network_interface.vm_network.bridge
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  graphics {
    type        = "spice"
    listen_type = "none"
  }
}
