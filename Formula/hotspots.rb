class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.8.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.8.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "ada98087507de1363081a23e78342eeebb4f74a4f72d670b057284ce444810bc"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.8.0/hotspots-linux-x86_64.tar.gz"
      sha256 "41d90912ec2810ee3714877a3c06c2279770000e74ba0d3d51b871bb479dcbbf"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
