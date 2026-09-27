class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.41.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.41.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "29755c246d97076365f3741a1d27165468671418789765762c1df45a4d785675"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.41.0/hotspots-linux-x86_64.tar.gz"
      sha256 "94d6bcd8fd311d010e51b27bea9fa84650640da3ac94755d87e592c672a0b2e0"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
