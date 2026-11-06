class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.3.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "cb9d01ef18939a3bf17a2ee5f005b0b17a8840346c1edb2c7ebe0f3cf4226214"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.3/hotspots-linux-x86_64.tar.gz"
      sha256 "19b704368cdc18f04d2d5b45ee253b61875113d1f8419b82af3c0a74747b0988"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
