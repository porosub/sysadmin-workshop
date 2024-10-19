# TODOs
- [ ] provision libvirt domain with terraform
- [ ] configure user name, password & authorized_keys with cloud_init
- [x] install podman to libvirt domains with ansible
- [x] create & add podman group to user group 
- [x] create podman.override.conf (SocketGroup=podman & chown, chmod /run/podman)
- [x] create /etc/systemd/system/podman.socket.d & override podman.override.conf ()
- [x] enable systemd podman.service, podman-restart.service, virtqemud.service, virtstoraged.service & virtnetworkd.service

