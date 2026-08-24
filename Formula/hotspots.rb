class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "62b2ff5313940f04bd08e620634d330d265af1ee091dd28048a46fbf24acfa2c"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.0/hotspots-linux-x86_64.tar.gz"
      sha256 "1148a73ba16222da309cf0aee1d2e9fcd7a25be340431c2e51289a3755f633b6"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
