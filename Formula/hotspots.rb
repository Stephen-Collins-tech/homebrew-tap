class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.18.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.18.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "d7327afc7c137fdeb45dd12952aa8339b0d6495c21d56c8f95708e74f4f22bd2"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.18.0/hotspots-linux-x86_64.tar.gz"
      sha256 "59a77bc13bead57de54b76802a9adea1f3897cf76b0d98d3c5757468a9f3f255"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
