{
  vim = {
    utility.undotree.enable = true;

    keymaps = [
      {
        key = "<leader>u";
        mode = "n";
        action = "<CMD>UndotreeToggle<CR>";
        desc = "Toggle Undotree";
      }
    ];
  };
}
