class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.2.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "58f69328a1e6adfa45b9b08ef2f29cf79a57a07b2a2a3c682805df31e13f2b41"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.2.0/hotspots-linux-x86_64.tar.gz"
      sha256 "d80e6fc8afb0c47e7c7fb839b4b8a17e4ef134618ef03c906769ead5ea6b043b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
