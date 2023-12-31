{
  config,
  pkgs,
  ...
}: {
  services.dunst = {
    enable = true;
    inherit (config.gtk) iconTheme;
    settings = {
      global = {
        alignment = "center";
        corner_radius = 8;
        follow = "mouse";
        font = "Dosis 9";
        format = "<b>%a</b>\\n<b>%s</b>\\n%b";
        frame_width = 2;
        gap_size = 5;
        height = 300;
        horizontal_padding = 8;
        icon_corner_radius = 0;
        icon_position = "left";
        indicate_hidden = true;
        line_height = 0;
        markup = "full";
        max_icon_size = 64;
        min_icon_size = 32;
        mouse_left_click = "do_action";
        mouse_middle_click = "close_all";
        mouse_right_click = "close_current";
        notification_limit = 20;
        offset = "5x5";
        origin = "top_center";
        padding = 8;
        progress_bar = true;
        progress_bar_corner_radius = 8;
        progress_bar_frame_width = 2;
        progress_bar_height = 10;
        progress_bar_max_width = 300;
        progress_bar_min_width = 150;
        scale = 0;
        separator_color = "auto";
        separator_height = 2;
        show_indicators = true;
        text_icon_padding = 0;
        transparency = 0;
        vertical_alignment = "center";
        width = 300;
        word_wrap = true;
      };

      fullscreen_delay_everything = {fullscreen = "delay";};

      urgency_low = {
        background = "#ffffff33";
        foreground = "#00000066";
        frame_color = "#88C0D0";
      };

      urgency_normal = {
        background = "#ffffff33";
        foreground = "#00000066";
        frame_color = "#88C0D0";
      };

      urgency_critical = {
        background = "#ffffff33";
        foreground = "#00000066";
        frame_color = "#BF616A";
      };
    };
  };
}
