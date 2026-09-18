class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.39.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.39.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "bb0f5e1d17c2c1da755e4d23d1edfe298196befb12de412ba7779f0ed40cc555"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.39.0/hotspots-linux-x86_64.tar.gz"
      sha256 "8ee2fd3180e099af89ccb09c894f75e9e34a7d305bfa13dc8b374ad11bca10f0"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
