class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.34.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.34.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "5f2ea547a354f2da6db892221663ffdf1075d36837fe03006e36ded3d80f9424"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.34.0/hotspots-linux-x86_64.tar.gz"
      sha256 "d190d836c8a3000ebdc49fe57cb0702f975738febf640488568adf4297ba574b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
