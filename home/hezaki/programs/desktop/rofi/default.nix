{
  xdg.configFile = {
    "rofi/colors.rasi".text = ''
      *{
        accent: #7f849c;
        foreground: #cdd6f4;
        background: #1E1E2E;	
        background-alt: #313244;	
      }
    '';
    "rofi/config.rasi".text = ''
      @import "~/.config/rofi/colors.rasi"

      configuration {
	      display-drun: "";
	      drun-display-format: "{name}";
	      modi: "drun";
	      show-icons: false;
      }

      * {
	      font: "JetBrainsMono Regular 12";
	      background-color: @background;
	      separatorcolor: transparent;
	      border: 0;
	      margin: 0;
	      padding: 0;
	      spacing: 0;	
      }

      window {
	      width: 250px;
	      border-radius: 16;
	      border: 3;
        border-color: @accent;
	      background-color: @background;
        location: center;
      }

      mainbox {
	      background-color: @background;
	      children: [listview, inputbar];
	      padding: 5;
      }

      listview {
	      scrollbar: false;
	      padding: 2 0;
	      background-color: @background;
	      columns: 1;
	      lines: 6;
	      margin: 0 0 5 0;
      }


      inputbar {
	      children: [prompt, entry];
	      background-color: @background-alt;
	      border-radius: 13;
      }

      prompt {
	      background-color: @accent;
	      text-color: @background;
	      enabled: true;
	      border-radius: 16;
	      padding: 4 10 0 10;
      }

      entry {
	      background-color: transparent;
	      text-color: @foreground;
	      placeholder-color: @accent;
	      border-radius: 16;
	      placeholder: "Waiting...";
	      blink: false;
	      padding: 4 4 4 6;
      }

      element {
	      background-color: rgba(0,0,0,0);
	      padding: 6 10 6 10;
	      border-radius: 20;
      }

      element-text {
	      background-color: inherit;
	      text-color: inherit;
	      expand: true;
	      horizontal-align: 0;
	      vertical-align: 0.5;
      }

      element-icon {
	      background-color: inherit;
	      text-color: inherit;
	      padding: 0 10 0 0;
      }

      element.normal.normal {
	      background-color: @background;
	      text-color: @foreground;
      }
      element.normal.urgent {
	      background-color: @accent;
	      text-color: @foreground;
      }
      element.normal.active {
	      background-color: @accent;
	      text-color: @background;
      }
      element.selected.normal {
	      background-color: @accent;
	      text-color: @background;
      }
      element.selected.urgent {
	      background-color: @background;
	      text-color: @foreground;
      }
      element.selected.active {
	      background-color: @accent;
	      text-color:       @background;
      }
      element.alternate.normal {
	      background-color: @background;
	      text-color: @foreground;
      }
      element.alternate.urgent {
	      background-color: @background;
	      text-color: @foreground;
      }
      element.alternate.active {
	      background-color: @background;
	      text-color: @foreground;
      }
    '';
  };
}
