class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "d4d78e88461421d3c34066726d68acf0e1f5a2762ae0fe5e06d44917eacbd34c"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.0/hotspots-linux-x86_64.tar.gz"
      sha256 "60a117a8ccc0b6e37b6e11d07580b9143fdac82b8b8d68b0d59704b055251db3"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
