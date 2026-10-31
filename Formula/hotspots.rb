class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.6.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "8f23c697357b04f657e64409ecb4de1392d903be0ce81c682b062b33784bfe0e"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.6.1/hotspots-linux-x86_64.tar.gz"
      sha256 "bb9355d66d30a38d7682db8f6cdc8e72d232a97ae29dcf847686b899dc9f0b60"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
