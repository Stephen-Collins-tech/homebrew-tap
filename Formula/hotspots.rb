class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.33.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "0a62ff4581b778176351e61730760185a9533ecf20e57bf2bd2b777de611d86b"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.0/hotspots-linux-x86_64.tar.gz"
      sha256 "c6e936265446d2d77efc472c8755da60af0dbb2d77c178134b50f00bafa0ae11"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
