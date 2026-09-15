class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.38.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.38.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "72d2cd459e87132c1ec83d327058b436602afa07bc608f17e7af8b40db373230"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.38.0/hotspots-linux-x86_64.tar.gz"
      sha256 "6482b8a6299cf8fe5d902c5fad32853cee770e7e15df91e58ea0a43894ad11b6"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
