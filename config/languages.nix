{
  vim = {
    languages = {
      enableFormat = true;           # Enable conform-nvim formatting
      enableTreesitter = true;       # Enable treesitter grammar
      enableExtraDiagnostics = true; # Enable nvim-lint diagnostics

      assembly.enable = true;
      bash.enable = true;
      clang.enable = true;
      css.enable = true;
      go.enable = true;
      haskell.enable = true;
      html.enable = true;
      java.enable = true;
      json.enable = true;
      kotlin.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nix = {
        enable = true;
        lsp.servers = [ "nixd" ];
        format.type = [ "nixfmt" ];
      };
      python.enable = true;
      rust.enable = true;
      sql.enable = true;
      tex.enable = true;
      ts.enable = true;
      yaml.enable = true;
      zig.enable = true;
    };

    spellcheck = {
      enable = true;
      languages = [
        "en"
        "sv"
      ];
      programmingWordlist.enable = true;
    };

    lsp = {
      enable = true;
      trouble.enable = true;
      otter-nvim.enable = true;
    };

    treesitter = {
      autotagHtml = true;
    };

    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        close = "<C-e>";
        confirm = "<C-y>";
        next = "<C-n>";
        previous = "<C-p>";
      };
    };

    snippets.luasnip.enable = true;
  };
}
