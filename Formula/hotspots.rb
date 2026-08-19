class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.34.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.34.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "90a4276699cb67d677d546ea9f913c8b5ca7822e88d7ad871ddcca53f339edc4"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.34.1/hotspots-linux-x86_64.tar.gz"
      sha256 "ad7b9af837ad85054c70130f90852ee90f91146a9a50d2c24a14c93ab46458ee"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
