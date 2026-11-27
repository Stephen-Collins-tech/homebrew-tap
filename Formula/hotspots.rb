class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "5.0.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "9d8481b6e45d4e0f1b274e390a818f2904be8e060d97988a5608e81ca4ccc8e7"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.2/hotspots-linux-x86_64.tar.gz"
      sha256 "b2ef4b6d8d502c3bf9680691db0a1d5a81f206b1bd164416c11584bf782f52a9"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
