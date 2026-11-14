class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.20/voxis-macos-arm64.tar.gz"
  version "0.1.20"
  sha256 "8fe4b3924ab57d5b329379559eaacdf769895cc65fcef0c7d0d50dd333021a07"
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
