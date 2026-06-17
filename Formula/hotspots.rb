class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.25.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "c70d123593520f00fdf4e6c9c8cb0d51c7bfdcacf6a85e4f6334c3b47b78adb6"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.0/hotspots-linux-x86_64.tar.gz"
      sha256 "a9606ccdccf52a81d66d324f1e457d7e02c57e761a96de2a5d5d1a092bffedfa"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
