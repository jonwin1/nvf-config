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
          "<leader>c" = "Code";
          "<leader>g" = "Goto";
          "<leader>w" = "Wiki";
          "<leader>fm" = null; # Remove Cellular Automation default
        };
      };

      hardtime-nvim.enable = true;
    };

    keymaps = [
      #         "mode" "key" "action" "description"
      (mkKeymap "n" "<Esc>" "<cmd>nohlsearch<CR>" "Clear search highlight")

      (mkKeymap "v" "J" ":m '>+1<CR>gv=gv" "Move selection down")
      (mkKeymap "v" "K" ":m '<-2<CR>gv=gv" "Move selection down")

      (mkKeymap "n" "<C-j>" "<cmd>cnext<CR>" "Center next quickfix item")
      (mkKeymap "n" "<C-k>" "<cmd>cprev<CR>" "Center prev quickfix item")
      (mkKeymap "n" "<C-l>" "<cmd>lnext<CR>" "Center next loclist item")
      (mkKeymap "n" "<C-h>" "<cmd>lprev<CR>" "Center prev loclist item")

      (mkKeymap "v" "<" "<gv" "Indent while keeping selection")
      (mkKeymap "v" ">" ">gv" "Indent while keeping selection")

      (mkKeymap "x" "<leader>p" "\"_dP" "Paste without copying to clipboard")
      (mkKeymap [ "n" "v" ] "<leader>d" "\"_d" "Delete without saving to clipboard")
      (mkKeymap [ "n" "v" ] "<leader>y" "\"+y" "Yank to system clipboard")
      (mkKeymap "n" "<leader>Y" "\"+Y" "(yy) (y$) Yank to system clipboard")

      (mkKeymap "n" "<leader>s" ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>"
        "Search and replace word under cursor"
      )

      (mkKeymap "n" "<leader>fx" "<cmd>Ex<CR>" "File Explorer (Netrw)")

      (mkKeymap "n" "<leader>cl" "<cmd>lua vim.diagnostic.setloclist()<CR>"
        "Open diagnostics in location list"
      )
      (mkKeymap "n" "<leader>cq" "<cmd>lua vim.diagnostic.setqflist()<CR>"
        "Open diagnostics in quickfix list"
      )
    ];
  };
}
