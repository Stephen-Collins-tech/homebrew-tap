class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.32.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.32.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "56c33f5ee2617d3651b02c2942a805a7cad61ce0291c26f1aa4bb363c651c0d7"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.32.0/hotspots-linux-x86_64.tar.gz"
      sha256 "1536c576eb1af72bb98286d33a465935d9c20c9f8a276e161c511d036f920589"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
