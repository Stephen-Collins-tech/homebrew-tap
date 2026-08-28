class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "483113da2e564596b88f2c5691246a951cbaaef66ebb78ab8ba18b6992624877"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.2/hotspots-linux-x86_64.tar.gz"
      sha256 "bf35ce28465c3184137e6a70721ed9faf9da715647b2a05e8987c990cefa6e83"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
