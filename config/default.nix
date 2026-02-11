{
  imports = [
    ./autocmds.nix
    ./binds.nix
    ./languages.nix
    ./lualine.nix
    ./mini.nix
    ./neowiki.nix
    ./options.nix
    ./telescope.nix
    ./visual.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
