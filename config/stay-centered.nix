{ pkgs, stay-centered, ... }:
{
  vim = {
    extraPlugins = {
      stay-centered = {
        package = pkgs.vimUtils.buildVimPlugin {
          name = "stay-centered.nvim";
          src = stay-centered;
        };

        setup = ''
          require("stay-centered").setup()
        '';
      };
    };
  };
}
