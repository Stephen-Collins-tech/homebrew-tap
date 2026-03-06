class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.3.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "479e9da49df00bafbc519c1e2b834f40e0b36c4989e88c717d66633d2655f939"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.3.0/hotspots-linux-x86_64.tar.gz"
      sha256 "732673dcf8fa1a5dc5f6487f9d9118c5970f5c4fc3da7470d2d1bddd9365a79f"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
