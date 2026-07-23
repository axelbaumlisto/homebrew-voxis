class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.1/voxis-macos-arm64.tar.gz"
  version "0.1.1"
  sha256 "3b2310a8442ed0712701bfead88df754bdd519588f012245b0b888661e98f284"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
