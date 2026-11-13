class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.17/voxis-macos-arm64.tar.gz"
  version "0.1.17"
  sha256 "72e7d99a0441cb1da3cf8d8aba16c07e0a2e2234f290e8b3a2948ec904a21a96"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
