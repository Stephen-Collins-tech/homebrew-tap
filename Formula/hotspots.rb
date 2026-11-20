class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.8.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "ea35b65003845309d08478867e78430b53ed2d01389dad76b539d80cf681f9b8"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.3/hotspots-linux-x86_64.tar.gz"
      sha256 "52545ab69e67a32fa62a709e7433ce1959f6889bcf6357ce0d2c92f694f39487"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
