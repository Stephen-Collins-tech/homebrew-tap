class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.17.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.17.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "5c945c18cb327101df42ebdda5f63f37a0d0c9ff37c031b395502baa91cf8497"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.17.0/hotspots-linux-x86_64.tar.gz"
      sha256 "af73542f510ed54ef32ddfb33b7d1b508c37dfb2d3a48d8a575e349bc391ebb9"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
