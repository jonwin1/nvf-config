{
  vim.telescope = {
    enable = true;

    setupOpts.defaults = {
      layout_strategy = "vertical";
      layout_config = {
        vertical.mirror = true;
        preview_cutoff = 0;
      };
    };

    mappings = {
      open = "<leader>fo";
      treesitter = null;
    };
  };
}
