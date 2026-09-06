class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.36.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.36.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "6b1ec7fed01c860af7e0f5fc170e5889e85daa4266bf5f1ef571f60ddda7e4e1"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.36.0/hotspots-linux-x86_64.tar.gz"
      sha256 "67192cc1c1e97ca9bbb3d8f0e52f83954115cad978e91c59ba2a3935bb393b30"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
