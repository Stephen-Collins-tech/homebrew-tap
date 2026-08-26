class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "74bedf1c7c43ae15557e9cb252e8bc0bab4355d13028861e677b4e8ca9adcd38"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.1/hotspots-linux-x86_64.tar.gz"
      sha256 "63efbeae4f97014064fe46fff96d964ad5be58fe4be2206982cb028a28c7f250"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
