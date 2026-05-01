class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.16.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.16.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "e1804f70096fd84b805606cc794be8cbcd53db7187b6ee294cba8fad77d3e78b"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.16.0/hotspots-linux-x86_64.tar.gz"
      sha256 "c1453f233caebb46444fa29f3e9823cb22e7ab77d39b45818dfddc1125608e6e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
