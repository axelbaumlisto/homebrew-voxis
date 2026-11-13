class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.16/voxis-macos-arm64.tar.gz"
  version "0.1.16"
  sha256 "5205c930f72cc70755c4dce896cf5bef0cc304ae1aeeb049babbaef1f32dc4c5"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
