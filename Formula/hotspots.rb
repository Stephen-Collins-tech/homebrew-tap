class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.20.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "73ad628af56669e07c807abb5bc9a126952c571df7944b69e8704d5781d254b6"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.2/hotspots-linux-x86_64.tar.gz"
      sha256 "85209c9a25bbdbd976696e16899715671e69f2ce0ebf1c235ac5a4b1c8e87dbf"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
