{
  imports = [
    ./options.nix
    ./visual.nix
    ./binds.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
