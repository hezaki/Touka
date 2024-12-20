{ pkgs, config, ... }:
{
  imports = [
    ./rules.nix
    ./binds.nix
    ./autostart.nix
    ./plugins.nix
  ];

  home.packages = with pkgs; [
    grimblast
    satty
    wl-clipboard
    wl-screenrec
    hyprpicker
    cliphist
    hyprshade
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    extraConfig = with config.lib.stylix.colors; ''
      monitor=eDP-1,1920x1080,0x0,1

      source = ./autostart.conf
      source = ./plugins.conf
      source = ./binds.conf
      source = ./rules.conf

      workspace = 1, monitor:eDP-1, default:true
      workspace = 2, monitor:eDP-1, default:true
      workspace = 3, monitor:eDP-1, default:true
      workspace = 4, monitor:eDP-1, default:true
      workspace = 5, monitor:eDP-1, default:true
      workspace = 6, monitor:eDP-1, default:true
      workspace = 7, monitor:eDP-1, default:true
      workspace = 8, monitor:eDP-1, default:true
      workspace = 9, monitor:eDP-1, default:true
      workspace = 10, monitor:eDP-1, default:true

      input {
        kb_layout = us,ru
        kb_options = grp:caps_toggle
        follow_mouse = 1
        sensitivity = 0.0
        repeat_rate = 50
        repeat_delay = 500
        force_no_accel = true 
        touchpad {
          natural_scroll = false
          disable_while_typing = false
        }
      }

      cursor:inactive_timeout = 1

      device {
        name = tpps/2-elan-trackpoint
        accel_profile = custom 200 1 -0.1
        scroll_points = 0.2 0.0 0.5 1 1.2 1.5
      }

      device {
        name = synps/2-synaptics-touchpad
        sensitivity = 0.7
      }

      general {
        gaps_in = 2
        gaps_out = 4
        border_size = 2
        col.active_border = rgb(${base00})
        col.inactive_border = rgb(${base03})
        layout = master 
      }

      misc { 
        vfr = true
        enable_swallow = true
        disable_splash_rendering = true
        disable_autoreload = true
        disable_hyprland_logo = true
        animate_manual_resizes = true
        animate_mouse_windowdragging = true
        background_color = rgb(${base00})
      }

      dwindle {
        force_split = 2
        preserve_split = true
        default_split_ratio = 0.6
        use_active_for_splits = false
      }

      master {
        new_status = master
        new_on_top = true
        mfact = 0.65
      }

      binds {
        workspace_back_and_forth = true
        allow_workspace_cycles = true
      }

      decoration {
        rounding = 6
        blur {
          enabled = false
          new_optimizations = true
        }
        screen_shader = $XDG_CONFIG_HOME/hypr/shaders/shader.glsl
      }

      shadow {
        enabled = true
        range = 5
        render_power = 1
        color = rgb(1C1D1D)
      }

      debug:suppress_errors = true

      animations {
        enabled = true
        bezier = myBezier, 0.05, 0.9, 0.1, 1.0
        animation = windows, 1, 5, myBezier
        animation = windowsOut, 1, 5, myBezier, popin 80%
        animation = border, 1, 10, myBezier
        animation = fade, 1, 10, myBezier
        animation = workspaces, 1, 4, myBezier, slide
      }
    '';
  };
}
