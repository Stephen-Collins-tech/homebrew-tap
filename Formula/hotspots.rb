class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.8.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "f318f9a61f77e2cefc571e40ea7182ef31dc4241c00b61193a0778536a75763d"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.2/hotspots-linux-x86_64.tar.gz"
      sha256 "a8289637a42cf0ca0b3c17030389a59ec17f34981cab582c5913486d05b1e13e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
