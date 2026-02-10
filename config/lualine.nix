{
  vim = {
    statusline.lualine = {
      enable = true;

      sectionSeparator = {
        left = "";
        right = "";
      };

      activeSection = {
        a = [
          ''
            { "mode" }
          ''
        ];

        b = [
          ''
            {
              "branch",
              icon = "",
            }
          ''
          ''
            { "diff" }
          ''
        ];

        c = [
          ''
            {
              "filename",
              path = 1,
              symbols = {modified = " ", readonly = " "},
            }
          ''
        ];

        x = [
          ''
            {
              "searchcount",
              maxcount = 999,
              timeout = 120,
            }
          ''
        ];

        y = [
          ''
            {
              "lsp_status",
              icon = " ",
              symbols = {
                done = "",
              },
            }
          ''
          ''
            {
              "diagnostics",
              sources = {"nvim_lsp", "nvim_diagnostic", "nvim_workspace_diagnostic", "vim_lsp", "coc"},
              symbols = {error = "󰅙 ", warn = " ", info = " ", hint = "󰌵 "},
            }
          ''
        ];

        z = [
          ''
            { "progress" }
          ''
          ''
            { "location" }
          ''
        ];
      };
    };

    options = {
      showmode = false;
      shortmess = "ltToOcCFsS"; # Reduce command line messages
    };
  };
}
