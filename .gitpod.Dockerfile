FROM gitpod/workspace-full

# Install QEMU and KVM
RUN sudo apt-get update && \
    sudo apt-get install -y qemu qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon

# Enable and start libvirtd
RUN sudo systemctl enable libvirtd && sudo systemctl start libvirtd
