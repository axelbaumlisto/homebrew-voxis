class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.14/voxis-macos-arm64.tar.gz"
  version "0.1.14"
  sha256 "468e7d4072419566b720149dbab70d7cf0ef0a3c14394b18aa5b638ee1f0e006"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
