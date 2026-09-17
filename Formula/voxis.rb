class Voxis < Formula
  desc "Private voice dictation engine (Tauri + Rust)"
  homepage "https://voxis.top"
  url "https://github.com/axelbaumlisto/voxis/releases/download/v0.1.7/voxis-macos-arm64.tar.gz"
  version "0.1.7"
  sha256 "0bb13584a5806f104b5a55d72a99b039942386107888ce9afe193f90edfb7243"
  depends_on arch: :arm64

  def install
    bin.install "voxis-macos-arm64" => "voxis"
  end

  test do
    system "#{bin}/voxis", "--version"
  end
end
