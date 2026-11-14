class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.22/voxis-macos-arm64.tar.gz"
  version "0.1.22"
  sha256 "da0cd82fd8a7129717dbe88bf8ab38a85a6a1b5c49b81a1377842cfe9217e66c"
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
