class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.29.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.29.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "5775991ceb61e2f7d4876cddb61d89675ec5834bd096b18dae6f5ccc4fa21f1b"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.29.0/hotspots-linux-x86_64.tar.gz"
      sha256 "8280dcad386787d293726e475b85a770147605076877441d5c46736b5c4c96ed"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
