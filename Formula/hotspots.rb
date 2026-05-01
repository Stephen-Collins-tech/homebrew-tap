class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.16.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.16.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "661cbd0e36638704c8b781cfec0e0f59d06252c2faa0532dd09ae82e3ef3b533"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.16.1/hotspots-linux-x86_64.tar.gz"
      sha256 "38e98c45986d40c744f09002c6645e4b5718e62bd7c0ee41dce843752049d235"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
