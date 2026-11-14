class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.19/voxis-macos-arm64.tar.gz"
  version "0.1.19"
  sha256 "d3949a19baeae87412171b1019bc914ae40d6e0c16fc1adf482d32ca4154cd1e"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
