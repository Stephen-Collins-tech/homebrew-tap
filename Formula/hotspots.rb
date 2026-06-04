class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.22.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.22.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "f0a4a91416fb26d7978600e8863d95d73e88e7bd5403b77a9937d36579f5ea4d"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.22.0/hotspots-linux-x86_64.tar.gz"
      sha256 "c9cd48677b5252e04933a6b8f048ade3b3e990cf7393dbe963d00da2e65656b6"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
