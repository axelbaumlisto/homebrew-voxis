class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.8/voxis-macos-arm64.tar.gz"
  version "0.1.8"
  sha256 "9d7f03f17b4fadcbd9d1a569e8646d3852fca12f3359cf04dd52974ec89995f9"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
