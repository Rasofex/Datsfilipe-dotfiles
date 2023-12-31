{ lib, ... }:

let theme = (import ../../modules/colorscheme).theme;
in {
  xdg.configFile."dunst/dunstrc".text = ''
    ${lib.fileContents ../../dotfiles/dunstrc}
      frame_color = "${theme.scheme.colors.altbg}"
      separator_color = "${theme.scheme.colors.altbg}"

    [urgency_low]
      background = "${theme.scheme.colors.altbg}"
      foreground = "${theme.scheme.colors.red}"
      timeout = 5

    [urgency_normal]
      background = "${theme.scheme.colors.altbg}"
      foreground = "${theme.scheme.colors.red}"
      timeout = 10

    [urgency_critical]
      background = "${theme.scheme.colors.red}"
      foreground = "${theme.scheme.colors.bg}"
      timeout = 20
  '';
}
