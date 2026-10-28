class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.5.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3d7e86f004fff69cf106bf188db137f60390ffbf02dae587923bf73bc8aca2e4"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.5.0/hotspots-linux-x86_64.tar.gz"
      sha256 "937523b432a7fb34fc0ca8ef70bfde35fb884acdb0bab7fe6ff796cb8827b7c0"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
