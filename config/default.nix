{ pkgs, ... }:
{
  imports = [
    ./autocmds.nix
    ./binds.nix
    ./cmp.nix
    ./harpoon.nix
    ./languages.nix
    ./lsp.nix
    ./lualine.nix
    ./mini.nix
    ./neowiki.nix
    ./options.nix
    ./telescope.nix
    ./todo.nix
    ./toggletern.nix
    ./treesitter.nix
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
