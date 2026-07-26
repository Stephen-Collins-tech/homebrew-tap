class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.33.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "031647a80effa9712543af0b0f8d758d12094be3026b529f06b9d9d98ace7e2a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.2/hotspots-linux-x86_64.tar.gz"
      sha256 "29fd58a995b7ea3c4d5c67e7f0a8afcc2c5b1fbaba7ac79cdf0831bea4c1f993"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
