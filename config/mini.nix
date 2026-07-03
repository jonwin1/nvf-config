{ lib, ... }:
{
  vim = {
    mini = {
      # General workflow
      diff.enable = true;
      icons.enable = true;

      cursorword.enable = true;
      trailspace.enable = true;

      tabline.enable = true;
      starter.enable = true;
      notify.enable = true;
    };
  };
}
