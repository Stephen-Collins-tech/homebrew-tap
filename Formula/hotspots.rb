class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.13.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.13.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "82295aa3417416b5086c3c8642859841f1a2cd4e4398e84945dbf791f848cf7f"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.13.0/hotspots-linux-x86_64.tar.gz"
      sha256 "effea7f6fbcb5e05062c8e5285520257fb275ee5138561665d29e2e708d55a2b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
