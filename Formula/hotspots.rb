class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.10.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.10.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "f9053da416e85847550ea3ae00c53541266f48f03e8e69b58a4bdaa750cb89ff"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.10.0/hotspots-linux-x86_64.tar.gz"
      sha256 "e6b9d4eff7fb644526d9dc3b9a7d3ab0f6e2cf729cdc17ff754a069f4e22d129"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
