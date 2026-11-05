class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.2.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "0df5cb5ba5a556aed73acf731298f6d9ee4ca2e0c6cc4d43d409c4decedf22d3"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.2.0/hotspots-linux-x86_64.tar.gz"
      sha256 "3ab9332ee90c44bb81e8fa79b670ff1160168d3b71b449cad1e3d99f3a894d53"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
