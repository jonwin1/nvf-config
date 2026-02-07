{ lib, ... }:
{
  vim = {
    mini = {
      icons.enable = true;
      statusline.enable = true;
      tabline.enable = true;
      git.enable = true;
      diff.enable = true;
      notify.enable = true;
      files.enable = true;
      indentscope = {
        enable = true;
        setupOpts.draw.animation = lib.generators.mkLuaInline ''require("mini.indentscope").gen_animation.none()'';
      };
      starter.enable = true;
      trailspace.enable = true;
      pairs.enable = true;
      cursorword.enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>fm";
        action = ":lua MiniFiles.open()<cr>";
        desc = "Open mini.files";
      }
    ];
  };
}
