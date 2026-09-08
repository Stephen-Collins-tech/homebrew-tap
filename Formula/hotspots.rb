class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.37.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.37.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "eb99545995f422d3e20a1d711c460df18f3be668ecdae3c98484c8629c3aed9e"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.37.0/hotspots-linux-x86_64.tar.gz"
      sha256 "a4807209e55f934f4ab2b07dc525649cdbf174165debbfdc7a9ff253d2b2ce03"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
