{
  imports = [
    ./options.nix
    ./visual.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
