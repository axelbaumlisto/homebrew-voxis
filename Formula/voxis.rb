class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.5/voxis-macos-arm64.tar.gz"
  version "0.1.5"
  sha256 "467690529bb237cafdc0652d0e561a8e7108bd78121afafc3c94c9348836ef39"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
