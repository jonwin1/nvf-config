{
  vim = {
    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };
    undoFile.enable = true;
    searchCase = "smart";

    options = {
      mouse = "";

      tabstop = 4;
      shiftwidth = 0;
      smartindent = true;

      scrolloff = 4;
      sidescrolloff = 4;
      colorcolumn = "80";

      wrap = false;

      # First <Tab> shows menu and completes longest common string, after that
      # it cycles through full matches.
      wildmode = "noselect:longest,full";
    };
  };
}
