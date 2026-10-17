class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.1.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "a9569f35ba0cd4ae4906f60fc129c1f488cb5e05ef84dd75d8012f765dd240de"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.1.0/hotspots-linux-x86_64.tar.gz"
      sha256 "4004be2778abe8aa49f8492d6211398dfb6864bee4a4eebd25cc76526216ad5b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
