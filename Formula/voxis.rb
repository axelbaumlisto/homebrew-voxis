class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.4/voxis-macos-arm64.tar.gz"
  version "0.1.4"
  sha256 "d78003e0078c6d5342db1dbb6af7d2f721e8c8eb88e1de81f070237664eb30f9"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
