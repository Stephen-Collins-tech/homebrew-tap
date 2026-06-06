class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.23.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "0256698b022d868cc1ffe4c7ecac9de235414ae3b2c9be0fde877ca70e752fbb"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.0/hotspots-linux-x86_64.tar.gz"
      sha256 "80488bb43072fd1858c3eaf0503bdc038528e8b48a093015fd242a60cd9acfe7"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
