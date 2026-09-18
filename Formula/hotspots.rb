class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.40.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.40.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "dcecd217af1cd8923b1677b695efbc70c43ff15f81c4efbd8c12f6e01a7e9a6f"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.40.0/hotspots-linux-x86_64.tar.gz"
      sha256 "0864216ae6092f95f0284be8c338801298536172d2d0684f87944a17126dc0f9"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
