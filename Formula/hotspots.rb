class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.6.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "9e72632771dd9d4d990df96919ed17eb526bf173137e2a25851aacfcf794cf9f"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.3/hotspots-linux-x86_64.tar.gz"
      sha256 "f0a6556d510283e947ef621eaefb66dc17f3f1326de52220fc11d19ebc78b03a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
