class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.6.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "0024c0054d7e262ef14dbe229a36ba15adfa0ed9239ccef7aabae5b9edfeef47"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.1/hotspots-linux-x86_64.tar.gz"
      sha256 "29c297abe5ec9ab2542138ae3643db5fad40626877202ad75d0140bb941d2a2b"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
