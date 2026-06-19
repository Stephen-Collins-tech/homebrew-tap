class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.25.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "cca515d82ff9287952cb0ab16b5c63a7e35003c1656c1e30cb82f0962b801556"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.2/hotspots-linux-x86_64.tar.gz"
      sha256 "72b5de61089b8750bfdb3fdf7ad7dfa1792e931086812783bde522f918118aec"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
