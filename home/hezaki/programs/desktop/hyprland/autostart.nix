{
  xdg.configFile."hypr/autostart.sh".text = ''
    waybar &
    swaync &
    swaybg -m fill -i /etc/nixos/home/hezaki/themes/images/nebokakoeto.png &
    emacs --daemon
  '';
}
