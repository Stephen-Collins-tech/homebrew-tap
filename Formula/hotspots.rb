class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.7.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.7.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "2b2300f37ea131b5cc281a7d7b1cc3d8f95e06eacf01793fc1940ba9ed0950aa"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.7.0/hotspots-linux-x86_64.tar.gz"
      sha256 "133edc202d14543efd93d2ce38b54a69a1eda543b1eb562350fc2166cdff6a3b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
