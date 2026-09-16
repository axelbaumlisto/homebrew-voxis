class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.6/voxis-macos-arm64.tar.gz"
  version "0.1.6"
  sha256 "286fb68dc0e50102c319d995c2ba3f8247802d6110c35e7a64ea91a48a988618"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
