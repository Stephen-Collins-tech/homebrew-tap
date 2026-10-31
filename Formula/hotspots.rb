class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.6.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "cd420bfb128547767aed7ac59ad6241ef0999efa84aabfbf57139b2bb4756612"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.2/hotspots-linux-x86_64.tar.gz"
      sha256 "679ec3fd2af64b18bb559175c596e71bc3c693a57c2de0aa6671f351636bc99a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
