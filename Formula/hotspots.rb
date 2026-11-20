class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.8.4"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.4/hotspots-darwin-aarch64.tar.gz"
    sha256 "c301494bddd2c992c98eb25aecf5f1d3dc04ff9e9f7734935105ed9b49cbbedb"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.8.4/hotspots-linux-x86_64.tar.gz"
      sha256 "fcfcf08e3d54791db0523703f818dee1409a28135ef642465f939f69eec636f2"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
