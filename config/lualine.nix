{
  vim = {
    statusline.lualine = {
      enable = true;

      setupOpts = {
        options = {
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
        };

        sections = {
          lualine_a = [
            {
              "@1" = "mode";
            }
          ];

          lualine_b = [
            {
              "@1" = "branch";
              icon = "";
            }
            {
              "@1" = "diff";
            }
          ];

          lualine_c = [
            {
              "@1" = "filename";
              path = 1;
              symbols = {
                modified = " ";
                readonly = " ";
              };
            }
          ];

          lualine_x = [
            {
              "@1" = "searchcount";
              maxcount = 999;
              timeout = 120;
            }
          ];

          lualine_y = [
            {
              "@1" = "lsp_status";
              icon = " ";
              symbols = {
                done = "";
              };
            }
            {
              "@1" = "diagnostics";
              sources = [
                "nvim_lsp"
                "nvim_diagnostic"
                "nvim_workspace_diagnostic"
                "vim_lsp"
                "coc"
              ];
              symbols = {
                error = "󰅙 ";
                warn = " ";
                info = " ";
                hint = "󰌵 ";
              };
            }
          ];

          lualine_z = [
            {
              "@1" = "progress";
            }
            {
              "@1" = "location";
            }
          ];
        };
      };
    };

    options = {
      showmode = false;
      shortmess = "ltToOcCFsS"; # Reduce command line messages
    };
  };
}
