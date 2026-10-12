class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.0.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "58506ac78f760c6ac238445936853c0a7a3a04fe5e92b1c4349fc959c6b18f8a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.0.0/hotspots-linux-x86_64.tar.gz"
      sha256 "f3b472e9895586823ed2e137e879d4988e898bebbee3dc80d83112c6ca8178ef"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
