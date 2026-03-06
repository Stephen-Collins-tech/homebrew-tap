class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.4.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "54fc41a5a19a3e3e10a19099f9b2b90397a7f5ab7a981a562eb4a4ca8c321834"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.4.0/hotspots-linux-x86_64.tar.gz"
      sha256 "bc0046675d1bc5075bdd35b72ff8382bf03bb2c89570a0c8eb9cde78ea2e6e02"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
