class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.23.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "1aef8df88380a3b2c8d51c913e8174936b0fc4f58e0daf6a228f36827f1e5434"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.2/hotspots-linux-x86_64.tar.gz"
      sha256 "026ceb5eaa0e5c449d6e07d4ecfbe3b0040803898bcf7e4f00b038b735a1a27e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
