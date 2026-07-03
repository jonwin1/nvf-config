let
  mkKeymap = mode: key: action: desc: {
    inherit
      mode
      key
      action
      desc
      ;
  };
in
{
  vim = {
    binds = {
      whichKey = {
        enable = true;
        setupOpts.preset = "helix";
        register = {
          "<leader>g" = "Git";
          "<leader>l" = "LSP";
          "<leader>w" = "Wiki";
          "<leader>t" = "Toggle [Gitsigns]";
        };
      };

      hardtime-nvim.enable = true;
    };

    keymaps = [
      #         "mode" "key" "action" "description"
      (mkKeymap "n" "<Esc>" "<cmd>nohlsearch<CR>" "Clear search highlight")

      (mkKeymap "v" "J" ":m '>+1<CR>gv=gv" "Move selection down")
      (mkKeymap "v" "K" ":m '<-2<CR>gv=gv" "Move selection down")

      (mkKeymap "n" "n" "nzzzv" "Center line on search next")
      (mkKeymap "n" "N" "Nzzzv" "Center line on search previous")

      (mkKeymap "v" "<" "<gv" "Indent while keeping selection")
      (mkKeymap "v" ">" ">gv" "Indent while keeping selection")

      (mkKeymap "x" "<leader>p" "\"_dP" "Paste without copying to clipboard")
      (mkKeymap [ "n" "v" ] "<leader>d" "\"_d" "Delete without saving to clipboard")

      (mkKeymap "n" "<leader>s" ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>"
        "Search and replace word under cursor"
      )
    ];
  };
}
