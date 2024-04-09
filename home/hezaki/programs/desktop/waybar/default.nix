{
  programs.waybar.enable = true;
  xdg.configFile = {
    "waybar/config.jsonc".text = ''
		{
		"battery": {
				"format": "{icon} {capacity}%",
				"format-alt": "{icon} {time} ",
				"format-charging": "<span color='#EBDBB2'>󰂅</span> {capacity}%",
				"format-icons": [
				"<span color='#EBDBB2'>󰁺</span>",
				"<span color='#EBDBB2'>󰁻</span>",
				"<span color='#EBDBB2'>󰁼</span>",
				"<span color='#EBDBB2'>󰁽</span>",
				"<span color='#EBDBB2'>󰁾</span>",
				"<span color='#EBDBB2'>󰁿</span>",
				"<span color='#EBDBB2'>󰂀</span>",
				"<span color='#EBDBB2'>󰂁</span>",
				"<span color='#EBDBB2'>󰂂</span>",
				"<span color='#EBDBB2'>󰁹</span>"
				],
				"states": {
				"critical": 15,
				"warning": 30
				}
		},
		"battery#bat2": {
				"bat": "bat2"
		},
		"clock#time": {
				"format": "<span color='#EBDBB2'></span> {:%H:%M:%S}",
				"interval": 1,
				"tooltip": false
		},
		"custom/date": {
				"exec": "date +\"<span color='#EBDBB2'>󰸘</span> %e %b\"",
				"interval": 1
		},
		"custom/launcher": {
				"format": "<span color='#EBDBB2' font='17'></span> {}",
		},
		"custom/separator": {
				"format": "<span color='#EBDBB2'>|</span>",
				"interval": 1
		},
		"height": 1,
		"hyprland/language": {
				"format": "<span color='#EBDBB2'>󰌌</span> {}",
				"format-en": "US",
				"format-ru": "RU",
				"interval": 1
		},
		"wlr/taskbar": {
				"format": "{icon}",
				"icon-size": 20,
				"tooltip-format": "{title}",
		},
		"hyprland/window": {
				"format": "{}",
				"max-length": 35
		},
		"backlight": {
				"device": "intel_backlight",
				"format": "{icon}{percent}% ",
				"format-icons": [" ", " "]
		},
		"layer": "top",
		"modules-center": [
				"hyprland/workspaces",
		],
		"modules-left": [
				"custom/launcher",
				"hyprland/language",
				"pulseaudio",
				"backlight"
		],
		"modules-right": [
				"custom/date",
				"clock#time",
				"battery"
		],
		"position": "bottom",
		"pulseaudio": {
				"format": "{icon} {volume}%",
				"format-icons": {
				"default": [
						"<span color='#EBDBB2'></span>",
						"<span color='#EBDBB2'></span>",
						"<span color='#EBDBB2'></span>"
				],
				"hands-free": "<span color='#EBDBB2'></span>",
				"headphone": "<span color='#EBDBB2'></span>",
				"headset": "<span color='#EBDBB2'></span>"
				},
				"format-muted": "<span color='#EBDBB2'>󰝟</span> mute",
				"on-click": "wpctl set-mute @deFAULT_AUDIO_SINK@ toggle",
				"scroll-step": 3
		},
		"temperature": {
				"critical-threshold": 80,
				"format": "{icon} {temperatureC}°C",
				"format-icons": [
				"<span color='#fab387'></span>"
				]
		},
		"hyprland/workspaces": {
				"on-click": "activate",
				"format": "{icon}",
				"format-icons": {
				"1":"一",
				"2":"二",
				"3":"三",
				"4":"四",
				"5":"五",
				"6":"六",
				"7":"七",
				"8":"八",
				"9":"九",
				"10":"十",
				},
				"persistent-workspaces": {
				"eDP-1": [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ],
				},
		  },
		}
    '';
    "waybar/style.css".text = ''
      * {
        font-family: JetBrainsMono NerdFont, SourceHanSansJP;
        font-weight: bold;
        font-size: 16px;
      }

      window#waybar {
        background-color: transparent;
        color: #EBDBB2;
      }

      window#waybar > box {
        margin: 5px 0px 0px 0px;
        background-color: #282828;
        border-top: 0px;
        border-bottom: 0;
        border-style: solid;
        border-color: #3C3836;
        box-shadow: 1 1 3 1px #101010;
      }

      #workspaces button {
        background-color: #504945;
        border-radius: 20px;
        margin: 2px;
        padding: 0px;
        padding-right: 6px;
        padding-left: 6px;
        color: #EFDEB5;
        min-height: 25px;
        transition: all 0.4s ease-in-out;
      }

      #workspaces button label{
        color: 	#EFDEB5;
        font-weight: bolder;
      }

      #workspaces button.empty{
        background: #3C3836;
      }

      #workspaces button.active {
        background: radial-gradient(circle, #EBDBB2 0%, #918373 50%, #7C6F64 100%); 
        background-size: 400% 400%;
        animation: gradient 5s linear infinite;
        transition: all 0.3s ease-in-out;
        border-color: #45475a;
      }

      #workspaces button.active label {
        color: #282828;
        font-weight: bolder;
      }

      @keyframes gradient {
	      0% {
		      background-position: 0% 50%;
	      }
	      50% {
		      background-position: 100% 30%;
	      }
	      100% {
		      background-position: 0% 50%;
	      }
      }

      @keyframes gradient_f {
	      0% {
		      background-position: 0% 200%;
	      }
          50% {
              background-position: 200% 0%;
          }
	      100% {
		      background-position: 400% 200%;
	      }
      }

      @keyframes gradient_f_nh {
	      0% {
		      background-position: 0% 200%;
	      }
	      100% {
		      background-position: 200% 200%;
	      }
      }

      #custom-date,
      #battery,
      #clock,
      #pulseaudio,
      #workspaces,
      #window,
      #language,
      #temperature,
      #text,
      #custom-launcher,
      #custom-separator,

      #tray {
        color: #EBDBB2;
        background: #282828;
        padding: 0 0.6em;
        margin: 0 0 0 0px;
        padding-top: 0px;
        padding-bottom: 2px;
        border-style: solid;
        min-height: 30px;
      }

      #tray {
        margin-right: 6px;
      }

      #custom-separator {
        padding: 0 3 0 0;
        background: #282828;
      }

      #pulseaudio {
        padding: 0 0.6em;
        margin: 4 4 4 4px;
        border-radius: 4 14 14 4px;
      }

      #backlight {
        padding: 0 0.6em;
        margin: 4 4 4 4px;
      }

      #clock {
        padding: 0 0.6em;
        margin: 3 4 3 4px;
        border-radius: 4 14 14 4px;
      }

      #custom-date {
        padding: 0 0.6em;
        margin: 3 4 3 4px;
        border-radius: 14 4 4 14px;
      }

      #battery {
        padding: 0 0.6em;
        margin: 3 6 3 4px;
        border-radius: 14 14 14 14px;
      }

      #language {
        padding: 0 0.6em;
        margin: 3 4 3 0px;
        border-radius: 14 4 4 14px;
      }

      #temperature {
        padding: 0 0.6em;
        margin: 3 4 3 4px;
        border-radius: 14 14 14 14px;
      }

      #custom-launcher {
        /* padding: 0 0.6em; */
        margin-left: 0px;
        margin-right: 0px;
        padding: 0 0.6em;
        border-radius: 0 20 0 0px;
      }

      #workspaces {
        background: #282828;
        padding: 0em;
        margin: 3 0 3 0px;
        border-radius: 14 14 14 14px;
      }
    '';
  };
}
