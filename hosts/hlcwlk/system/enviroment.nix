{ config, pkgs, inputs, ... }: let
  username = "hezaki";
  hostname = "hlcwlk";
  passroot = "password";
  passuser = "password";
in {
  imports = [ 
    inputs.home-manager.nixosModules.home-manager 
  ];

  environment.systemPackages = with pkgs; [
    home-manager
    vulkan-tools
    iftop
    git
    gcc
    cargo 
    rustc
    neofetch
    nix-tree
    rnix-lsp
    nodePackages_latest.pyright
    killall
    unzip
    fzf
    zip
    unrar
    neovim
    tmux
    wget
    tree
    doas
    lsd
    p7zip
    ranger
    bat
    brillo
    htop
  ];

  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      insertNameservers = [ "1.1.1.1" "1.0.0.1" ];
    };
    dhcpcd = {
      wait = "background";
      extraConfig = "noarp";
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true; 
    extraSpecialArgs = {
      inherit inputs;
    };
  };

  programs = {
    zsh.enable = true;
  };

  users.users.root = {
   initialPassword = passroot;
   shell = pkgs.zsh;
  };

  users.users.${username} = {
   isNormalUser = true;
   initialPassword = passuser;
   home = "/home/${username}";
   extraGroups = [
    "wheel"
    "adbusers"
    "podman"
   ];
   shell = pkgs.zsh;
  };

  security = {
    doas = {
    enable = true;
      extraConfig = ''
      permit persist keepenv :wheel
      '';
    };
  };

  documentation = {
    enable = true;
    doc.enable = false;
    man.enable = true;
    dev.enable = false;
  };

  time.timeZone = "Europe/Samara";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = { LANG = "en_US.UTF-8"; };
  };

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    jetbrains-mono
    ipafont
  ];
}