class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.21.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.21.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "5b8a09337341efe2ab5f407d355531630ff0b120891ca33af10a40ed89ecee3b"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.21.1/hotspots-linux-x86_64.tar.gz"
      sha256 "eccf333de59f6cc3868a2c5f751d8f9ca31cb733098891111723a4e190c2708a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
