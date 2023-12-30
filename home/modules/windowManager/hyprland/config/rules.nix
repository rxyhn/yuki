{config, ...}: {
  wayland.windowManager.hyprland.settings = {
    layerrule = let
      layers = "^(bar|gtk-layer-shell)$";
    in [
      "blur, ^(gtk-layer-shell)$"
      "blur, bar"
      "blur, notifications"
      "ignorezero, ^(gtk-layer-shell)$"
      "ignorezero, bar"
      "ignorezero, notifications"
    ];

    windowrulev2 = [
      "float, class:^(imv)$"
      "float, title:^(Media viewer)$"
      "float, title:^(Picture-in-Picture)$"
      "float, title:^(com.github.Aylur.ags)$"
      "idleinhibit focus, class:^(firefox)$, title:^(.*YouTube.*)$"
      "idleinhibit focus, class:^(mpv)$"
      "idleinhibit fullscreen, class:^(firefox)$"
      "pin, title:^(Picture-in-Picture)$"
      "workspace special silent, title:^(.*is sharing (your screen|a window)\.)$"
      "workspace special silent, title:^(Firefox — Sharing Indicator)$"
    ];
  };
}