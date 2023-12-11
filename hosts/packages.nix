{ pkgs, lib, ... }:

let
  localPkgs = import ../pkgs { pkgs = pkgs; };
  customPkgs = with localPkgs; [
    spacedrive
  ];
  nixpkgs = import <nixpkgs> { overlays = []; };
in {
  services.openssh.enable = true;

  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    # apps
    qbittorrent
    discord
    rio
    bitwarden
    obs-studio

    # file management
    unzip
    zip
    unar

    # utilities
    gnumake
    gcc
    cmake
    libtool
    lsof
    
    # tools
    git
    jq
    curl
    htop
    killall
    ripgrep
    fd
    fzf
    ghq
    gh
    buku

    # services / daemons
    dunst
    libnotify
    inotify-tools
    
    # media
    pavucontrol
    mpv
    ffmpeg

    # system
    nodejs
    xdg-utils
    xdg-user-dirs
    gtk-layer-shell
    gtk3
  ];
}
