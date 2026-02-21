{ pkgs, ... }:
{
  imports = [
    ./autocmds.nix
    ./git.nix
    ./binds.nix
    ./harpoon.nix
    ./languages.nix
    ./lualine.nix
    ./mini.nix
    ./neowiki.nix
    ./options.nix
    ./telescope.nix
    ./todo.nix
    ./toggletern.nix
    ./undotree.nix
    ./visual.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;

    extraPackages = [
      pkgs.nixfmt
    ];
  };
}
