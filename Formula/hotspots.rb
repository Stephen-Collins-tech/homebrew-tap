class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.3.4"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.4/hotspots-darwin-aarch64.tar.gz"
    sha256 "13bbd35a2a65b60cde41b552c4ed2bb67eb7daa0f1749f0f5fc428bf0dc75629"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.3.4/hotspots-linux-x86_64.tar.gz"
      sha256 "ddc6172d349bc77c9b5f0ff7de9720f70d011a6c86c2c33c1591329d5da21a94"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
