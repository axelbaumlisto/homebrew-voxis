class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.21/voxis-macos-arm64.tar.gz"
  version "0.1.21"
  sha256 "424f1f4c17644b357c6672d19892cbb6cac4b8c4d9a964c2679c236e150c901f"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    # `voxis --version` prints `voxis <version>` and exits before the GUI starts
    # (src-tauri/src/main.rs); the version comes from this formula's own DSL
    # value, which scripts/ci/update-homebrew.sh rewrites on every release.
    assert_match version.to_s, shell_output("#{bin}/voxis --version")
  end
end
