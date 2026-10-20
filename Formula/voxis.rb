class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.11/voxis-macos-arm64.tar.gz"
  version "0.1.11"
  sha256 "88854065051cbcf3edda2041031ff4db4a5090b39097ad0040985b46857f97e2"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
