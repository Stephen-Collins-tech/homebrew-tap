class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.8.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "1c27005bab88833c2feffea3d12b13ca51732b34b33ffc84cf2aa7d690bc67c0"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.0/hotspots-linux-x86_64.tar.gz"
      sha256 "bb67b659cc6b9f426e8919179093602cb0d47f3eb94a7e8d917bf02b04d48d6f"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
