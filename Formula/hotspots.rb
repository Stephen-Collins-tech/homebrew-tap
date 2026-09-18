class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.39.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.39.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "162e9daf36b33d9c0dfefba22f5c420968a9ca56d7cc869fd066861496743885"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.39.1/hotspots-linux-x86_64.tar.gz"
      sha256 "81cb6f19a963ecfa5fe858f6dd4cddfb9cb6e96cb4c79975c03114163b1b69c2"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
