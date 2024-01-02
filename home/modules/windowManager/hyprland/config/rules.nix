{...}: {
  wayland.windowManager.hyprland.settings = {
    layerrule = [
      "blur, ^(gtk-layer-shell)$"
      "blur, bar"
      "blur, launcher"
      "blur, lockscreen"
      "blur, notifications"
      "blur, wofi"
      "ignorezero, ^(gtk-layer-shell)$"
      "ignorezero, bar"
      "ignorezero, launcher"
      "ignorezero, lockscreen"
      "ignorezero, notifications"
      "ignorezero, wofi"
      "noanim, launcher"
      "noanim, wofi"
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
