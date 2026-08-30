class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.4"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.4/hotspots-darwin-aarch64.tar.gz"
    sha256 "1ffa0134c59773b11f411a0c34e6384fba3801664c8450046edbb6d0adc93b31"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.4/hotspots-linux-x86_64.tar.gz"
      sha256 "b1a34235131c9a8bb16c0e0aa0df9193e4bbfec6c3b3e05ad6e62fa1af15ca27"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
