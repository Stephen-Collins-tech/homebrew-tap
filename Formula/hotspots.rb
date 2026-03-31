class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.12.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.12.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "2ff91f59175229c5d9e3ec8fabdc4adbaa26fead4a580a057f90bbf00c0ebc92"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.12.0/hotspots-linux-x86_64.tar.gz"
      sha256 "bf12a9f39b039e973ddbfb0ec207ce629d236ea9c8b61130e0c0e5baa52ebbdb"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
