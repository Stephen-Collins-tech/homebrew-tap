class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "4.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v4.0.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "7001bf4acea28a7a1ea7b2deddd71ae63d57b41465733386c51d1edb03003785"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v4.0.0/hotspots-linux-x86_64.tar.gz"
      sha256 "d445cfe90698d8bc755ad486fbeade66f0b526d010f366cf428d115d56ea4813"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
