class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.3/voxis-macos-arm64.tar.gz"
  version "0.1.3"
  sha256 "6b118a1663e0469d517ec08f5aeb46b10c9890f69da98159d5c1f7c399339621"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
