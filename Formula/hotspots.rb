class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "0d8fc549b7ca5c2b00e87a6f855a6ae0f9d38f1ffe0d03f68674822b92b58736"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.3/hotspots-linux-x86_64.tar.gz"
      sha256 "b98c0a4c341a7f6e210948278bbfc5936053985ff0404bef90a9f4bb723d6014"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
