class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.8.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "14611a3a1047b36dfd51d5ae91db2c70c02e825f6220c2b7da6e4ac997fc38d5"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.1/hotspots-linux-x86_64.tar.gz"
      sha256 "673cd8e430571e020bbe81428b5b41d74bd521cd1ce39a9524c3b15d5f43393f"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
