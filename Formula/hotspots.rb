class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.19.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.19.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3756c89822ca57d050a61400c1b654e56d35069cc637de3824299c7b880f6f95"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.19.0/hotspots-linux-x86_64.tar.gz"
      sha256 "dae246e5291d788371b8af27ebbab5ccaaf372d45c3811b879d2eff6898b4020"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
