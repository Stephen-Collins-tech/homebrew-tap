class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.24.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.24.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "b6d1a7c67e30bdcb66985665cdbe3764be6f2d3d3461478b5c0238907e1963c8"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.24.0/hotspots-linux-x86_64.tar.gz"
      sha256 "83f3999c2abcbb1f41c2fb1c509d8289c4fd4123b2998e250692c6861f52d1b8"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
