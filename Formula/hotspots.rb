class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.28.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.28.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "8566abd303d6ef9ae904b82b86e244be2aba07e13a6d0fabf12fc7a333e7e119"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.28.0/hotspots-linux-x86_64.tar.gz"
      sha256 "1513037b191ed272172370360dd173a088a14aee28c1a693af0d813fac411052"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
