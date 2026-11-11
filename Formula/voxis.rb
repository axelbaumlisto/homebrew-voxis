class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.15/voxis-macos-arm64.tar.gz"
  version "0.1.15"
  sha256 "f5bde3a06ca515aa37aa8705852aec617ee637d88e6d1eb52d234129f222f4ca"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
