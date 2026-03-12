class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.6.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.6.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "681348ede3016959c74072f307a0cc94cd69af63d27bec80248c85f7d953dcd9"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.6.1/hotspots-linux-x86_64.tar.gz"
      sha256 "7961aefff50256a4b0e1d53f493a823713dc60bb4fcb9c74babad582ad48c268"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
