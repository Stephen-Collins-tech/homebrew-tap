class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.25.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "26e2e92dbd742e48269f9e81f9b0047f86612279c51ac56c49d3ae215b41550d"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.1/hotspots-linux-x86_64.tar.gz"
      sha256 "c0cdcd24bd611c3091c134c59d5b38a4e460022faad87686695e7aabd7590b9e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
