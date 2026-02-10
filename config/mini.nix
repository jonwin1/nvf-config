{ lib, ... }:
{
  vim = {
    mini = {
      icons.enable = true;

      indentscope = {
        enable = true;
        setupOpts.draw.animation = lib.generators.mkLuaInline ''require("mini.indentscope").gen_animation.none()'';
      };
      cursorword.enable = true;
      trailspace.enable = true;

      tabline.enable = true;
      starter.enable = true;
      notify.enable = true;
    };
  };
}
