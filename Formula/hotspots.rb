class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.6.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.6.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "ec617fe370e5317a2fdac5652364df44afd9e92aae6e6e97a23c6fcea69afaae"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.6.0/hotspots-linux-x86_64.tar.gz"
      sha256 "a1037ca17fa77d28cf3da265e319f73c1624701fac119ebe8595265fe2501265"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
