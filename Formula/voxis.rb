class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.2/voxis-macos-arm64.tar.gz"
  version "0.1.2"
  sha256 "b451f9e365f1186c069d60cb73bda0967b86464d312d42b0b692761f24a14b31"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
