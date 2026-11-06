class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "323011d174ad565709f75cbc7c835cb2642cac6851a6c82b986aea8f20520925"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.2/hotspots-linux-x86_64.tar.gz"
      sha256 "3194adc87a0bc9f43b7bb5e0c641497a47ac343d6058fa58e215af246229491c"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
