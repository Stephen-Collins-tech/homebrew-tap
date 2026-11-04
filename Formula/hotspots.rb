class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.1.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3708aa623e74db4d542e49ca2967bd7d51c60d4f0e25d39309ffea53eafbdaee"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.1.0/hotspots-linux-x86_64.tar.gz"
      sha256 "1f7b26b2d6d6c84462d89e3e2bb11df2378696a9c9af227cf776d19c6a939696"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
