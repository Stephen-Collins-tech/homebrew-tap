class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.4.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "5ca83f5d8d1b58dcc665a189d30af1228167e41deaf3502e392cabf36bcf820d"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.4.0/hotspots-linux-x86_64.tar.gz"
      sha256 "0d4b67828a9a5e2ae3d5be1a933d54a3a9c37c0aba887907f98bb91ad9fcc5fe"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
