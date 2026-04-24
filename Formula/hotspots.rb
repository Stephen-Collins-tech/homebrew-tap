class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.15.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.15.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "62b1732fad475daa687bfc16b1ce98aefb9b0354b145c5370f2d48f86d7123a3"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.15.1/hotspots-linux-x86_64.tar.gz"
      sha256 "66e85e9106f248551c8788b1b55ac156a9c2adbc72839302f22d8382431caf64"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
