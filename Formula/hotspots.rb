class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.20.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "969761606facaeeb92383ce2903b5d6a91effbf1e2c66ad966f3e60be1d746a5"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.1/hotspots-linux-x86_64.tar.gz"
      sha256 "6339b12cee35ffa3ea4fb5e7e6d13bdbaa9d774fddd9b742d8bc7cee66905215"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
