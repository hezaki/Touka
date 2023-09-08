{ pkgs, ... }: {
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };
  home.packages = with pkgs; [
    qemu
    libvirt
    virt-manager 
    win-virtio
  ];
}