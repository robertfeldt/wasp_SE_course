{
	inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

	outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
      perSystem = { pkgs, ... }: {
        apps.default.program = pkgs.writeShellApplication {
          name = "pandoc-build-pdf";

          runtimeInputs = [
            pkgs.pandoc
            pkgs.librsvg
          ];

          text = pkgs.lib.escapeShellArgs [
            "pandoc" "--pdf-engine=xelatex" "--citeproc"
            "--variable=linkcolor:blue" "--variable=fontsize:11pt"
            "--bibliography=src/bibliography.yaml" "--csl=src/ieee-with-url.csl"
            "--output=Assignment.pdf" "src/Assignment.md"
          ];
        };
      };
    };
}
