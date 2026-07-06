{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";

    neowiki = {
      url = "github:echaya/neowiki.nvim";
      flake = false;
    };
    stay-centered = {
      url = "github:arnamak/stay-centered.nvim";
      flake = false;
    };
  };

  outputs =
    {
      nixpkgs,
      nvf,
      neowiki,
      stay-centered,
      ...
    }:
    {
      packages.x86_64-linux.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;

          modules = [
            ./config
          ];

          extraSpecialArgs = {
            inherit neowiki stay-centered;
          };
        }).neovim;

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-tree;
    };
}
