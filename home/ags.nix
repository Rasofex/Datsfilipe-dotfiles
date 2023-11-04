let
  theme = (import ../modules/colorscheme).theme;
in {
  xdg.configFile."ags" = {
    source = ../modules/ags;
    recursive = true;
  };

  xdg.configFile."ags/style.css".text = ''
    label {
      font-weight: bold;
    }

    .bar {
      color: ${theme.scheme.colors.fg};
      background: ${theme.scheme.colors.bg};
      font-size: 12px;
    }

    .tray {
      margin: 0 6px;
    }

    .tray button {
      background: transparent;
      border: none;
    }

    .workspaces button {
      background: transparent;
      margin: 4px;
      border-radius: 0;
    }

    .workspaces button.focused {
      background: ${theme.scheme.colors.blue};
      color: ${theme.scheme.colors.bg};
    }

    .workspaces button.occupied {
      background: ${theme.scheme.colors.altbg};
    }

    .client-title {
      color: ${theme.scheme.colors.red};
    }

    .clock {
      margin: 0 6px;
    }

    progress, highlight {
      background: ${theme.scheme.colors.red};
      min-height: 4px;
      border-radius: 4px;
    }

    .powermenu button {
      background: ${theme.scheme.colors.bg};
      border-radius: 0;
      border: 1px solid ${theme.scheme.colors.altbg};
      margin: 0 8px;
      min-height: 40px;
      font-weight: bold;
    }

    .sleep {
      color: ${theme.scheme.colors.green};
    }

    .reboot {
      color: ${theme.scheme.colors.blue};
    }

    .shutdown {
      color: ${theme.scheme.colors.red};
    }

    .logout {
      color: ${theme.scheme.colors.yellow};
    }

    .verification {
      min-height: 60px;
    }

    .verification .description {
      font-weight: bold;
      color: ${theme.scheme.colors.fg};
    }

    .verification .buttons button {
      background: ${theme.scheme.colors.bg};
      border: 1px solid ${theme.scheme.colors.altbg};
      margin: 0 8px;
      border-radius: 0;
    }
  '';
}
