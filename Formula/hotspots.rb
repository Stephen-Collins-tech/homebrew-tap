class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.14.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.14.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "e8afe4ee587b6db3918f453a1f68854b6704183e445ac3d05944c2f7f9121c7a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.14.0/hotspots-linux-x86_64.tar.gz"
      sha256 "6724b02e1cccb47cd64041706c691e1d2c2b8787a7547431d8dce23dbcdd4bf3"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
