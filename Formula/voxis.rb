class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.10/voxis-macos-arm64.tar.gz"
  version "0.1.10"
  sha256 "0568403697e6f47acdd24f3309368a86cfc81f0bc8ca9def24b3bde9e21cdb56"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
