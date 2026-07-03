{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
      transparent = true;
    };

    visuals = {
      blink-indent = {
        enable = true;
        setupOpts = {
          static.char = "▏";
          scope = {
            indent_at_cursor = true;
            char = "▏";
            highlights = [
              "BlinkIndentBlue"
            ];
          };
        };
      };
      nvim-web-devicons.enable = true;
    };

    ui.borders.enable = true;
  };
}
