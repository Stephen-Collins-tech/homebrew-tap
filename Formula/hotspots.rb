class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.42.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.42.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "611a29e334c0df10148e4cd4c4cb9b70cccdc0e7f49c1fecdb61b5fdc3b92dda"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.42.0/hotspots-linux-x86_64.tar.gz"
      sha256 "502dacd1313de41d7a787f4e7eafb9e9c23f194f875fdad27c715c8b325a94b4"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
