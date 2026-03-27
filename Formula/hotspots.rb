class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.11.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.11.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "f5e28b87595418358447094917cabd9b58122a78a99115c152c9b09d91bdc18e"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.11.1/hotspots-linux-x86_64.tar.gz"
      sha256 "c2c1b02bf3716156f4c7324520d91931b27ae05f3eafa8f17b69784ad54a072a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
