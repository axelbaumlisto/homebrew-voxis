class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.12/voxis-macos-arm64.tar.gz"
  version "0.1.12"
  sha256 "9e72053ccdf8af1b2c128c985818c0cf7bfb0a5dcdfa7ae128159fca41700152"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
