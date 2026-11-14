class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.18/voxis-macos-arm64.tar.gz"
  version "0.1.18"
  sha256 "6c985b0c75b7828931c54487014c44bc39592fdc52bdccc0fe749f6322043ba9"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
