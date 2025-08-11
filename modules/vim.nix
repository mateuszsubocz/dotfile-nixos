{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ vim ];

  # Systemowy vimrc
  environment.etc."vimrc".text = ''
    set number
    syntax on
    set background=dark
    colorscheme fallen
    set tabstop=4
    set shiftwidth=4
    set expandtab

    if has("gui_running")
      set guifont=CommitMono\\ Nerd\\ Font\\ Mono\\ 14
    enddif
  '';
}
