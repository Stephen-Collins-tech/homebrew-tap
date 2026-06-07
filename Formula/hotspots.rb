class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.23.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "c416e8ea64cad74b49b562d73b11c01bcb34c8a3ddf8325171f3ecc8873e0063"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.3/hotspots-linux-x86_64.tar.gz"
      sha256 "30611da8077931df3bb426e3e09da5a5510aa2134be0d0e1bde7200dea60187b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
