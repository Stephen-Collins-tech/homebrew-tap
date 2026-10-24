class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.3.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "f8d68f0f5772c0deacfc434917cf7e71b19a09719bce2b31d909e7450c0ea0c0"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.3.0/hotspots-linux-x86_64.tar.gz"
      sha256 "ade48a60737802eca3d08d51e6c569182b98a11b6938acd6a64937fc5d37122e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
