class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.5.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3be869ca3a8e5d14a9a4127ae22f85d010fb7b8b5f34db9de91993550edb64bd"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.5.0/hotspots-linux-x86_64.tar.gz"
      sha256 "6b800737ddc8e9a234250bc15d223fcf6c1c56fe9aada97ebfdb48cd93888f89"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
