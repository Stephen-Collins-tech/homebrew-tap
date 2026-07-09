class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.30.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.30.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "94e268173818b88f0b46fa856d1aaa23f2cb11d222c8a17da1675233d87810b1"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.30.0/hotspots-linux-x86_64.tar.gz"
      sha256 "aff8e70bc0bef1a26dd52cb7cd809babbe6a7e32621e3a5424a04848aa2ae21f"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
