class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.11.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.11.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "d682de38f9ef0d11191a0552c92cca1a765f4d4e7a33fc48f4478332b1a9d3a7"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.11.0/hotspots-linux-x86_64.tar.gz"
      sha256 "af0ec76b7a3bb4adf6fd00af2a2fb8300134bfc7085be8193c03741732c043e0"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
