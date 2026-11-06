class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "fb3830eedcd231460294b7e1cfff76cdcdd1025b1b921b733d19124952b961dc"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.1/hotspots-linux-x86_64.tar.gz"
      sha256 "925c3a404e021911f9a303340d8aa63f5f7d197adc5a51ea07f98c0bda7ffccb"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
