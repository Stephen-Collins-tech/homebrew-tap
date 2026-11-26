class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "5.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "94814a73cf7436a5895fa6e24e906836151cd0be6e2e25a8888009333722a7ff"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.1/hotspots-linux-x86_64.tar.gz"
      sha256 "3cd0852bd345f73d65ba17851c172e775afacddc6d465829c1e3b52d40253e23"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
