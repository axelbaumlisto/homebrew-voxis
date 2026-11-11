class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.13/voxis-macos-arm64.tar.gz"
  version "0.1.13"
  sha256 "ce8ed36a32aa79a3e5da13dd8361ea6f8fb3a878c254c3fb862c05aef20893c1"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
