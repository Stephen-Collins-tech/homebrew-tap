class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.26.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.26.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "50225501a99524df689d2a8ec1fe6690bb9a4a3c0bbf2b6f85a5561d7ae5c67a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.26.0/hotspots-linux-x86_64.tar.gz"
      sha256 "07c18e0d28c66b2623e563f146957662be341cfb2b3b05c4d884515ed5142d1d"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
