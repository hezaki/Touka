{
  lib,
  modulesPath,
  inputs,
  pkgs,
  config,
  ...
}:
{
  imports = with inputs; [
    "${nixos-hardware}/lenovo/thinkpad/t14/amd/gen1"
    chaotic.nixosModules.nyx-cache
    chaotic.nixosModules.nyx-overlay
    chaotic.nixosModules.nyx-registry
    ./systemd
    ./enviroment/fonts
    ./enviroment/local
    ./enviroment/nix
    ./enviroment/programs
    ./enviroment/security
    ./enviroment/users
    ./enviroment/home-manager
    ./enviroment/network
    ./enviroment/variables
    ./hardware
    ./filesystem
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 20;
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
    initrd = {
      systemd.enable = true;
      compressor = "zstd";
      compressorArgs = [ "-9" ];
      availableKernelModules = [
        "nvme"
        "xhci_pci"
        "ahci"
        "ohci_pci"
        "ehci_pci"
        "pata_atiixp"
        "ums_realtek"
        "sd_mod"
        "sr_mod"
        "sdhci_pci"
        "usb_storage"
      ];
    };
    kernelPackages = pkgs.linuxPackages_cachyos-lto;
    kernelParams = [
      "quiet"
      "page_alloc.shuffle=1"
      "threadirqs"
      "split_lock_detect=off"
      "pci=pcie_bus_perf"
    ];
    extraModulePackages = with config.boot.kernelPackages; [ amneziawg ];
    kernelModules = [
      "kvm-amd"
      "vboxdrv"
      "vboxnetadp"
      "vboxnetflt"
    ];
    consoleLogLevel = 0;
    initrd.verbose = false;
    tmp.cleanOnBoot = true;
  };

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  system.stateVersion = "24.11";
}
