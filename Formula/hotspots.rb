class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.9.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.9.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "29c31deb0cd65d78a66fd4cd77aec53dfe46054b6991fadd2aa71362de83dcaf"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.9.0/hotspots-linux-x86_64.tar.gz"
      sha256 "b0f576fb070fa76350abd6c922ff3c4c3b401f2d53e1194d4530af827a50af4e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
