{
  imports = [
    ./telescope.nix
    ./lualine.nix
    ./autocmds.nix
    ./options.nix
    ./visual.nix
    ./languages.nix
    ./binds.nix
    ./mini.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
