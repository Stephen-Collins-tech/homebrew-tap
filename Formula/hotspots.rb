class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.15.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.15.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "0d886e282514912e5b3bd123c492bd1a421c4c971bf6a660f7b09072f8728777"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.15.0/hotspots-linux-x86_64.tar.gz"
      sha256 "187ffeaba6dc80a3a87c481b58511b552897618f4d99458cf38aeb61130a9dec"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
