{
  imports = [
    ./options.nix
    ./visual.nix
    ./languages.nix
    ./binds.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
