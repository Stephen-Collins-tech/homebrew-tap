class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.4.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "01563ccfd21e2916364737da14ae5f144a764a39ec3abae03d03cab371da2157"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.4.0/hotspots-linux-x86_64.tar.gz"
      sha256 "4de3f8f26a930dfc16afc4af7551c2179d245bfcb0e8823d97b0f45578ad1698"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
