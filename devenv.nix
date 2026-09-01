{
  pkgs,
  ...
}:

{
  packages = with pkgs; [ cargo-watch ];

  languages.rust = {
    enable = true;
    lsp.enable = true;
    channel = "nightly";
    targets = [ "thumbv7em-none-eabihf" ];
    components = [
      "rustc"
      "cargo"
      "clippy"
      "rustfmt"
      "rust-analyzer"
      "rust-src"
      "llvm-tools-preview"
    ];
  };

  git-hooks.hooks = {
    shellcheck.enable = true;
    prettier.enable = true;
    rustfmt.enable = true;
    nixfmt.enable = true;
    clippy.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
