class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.23.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "50ca34e5e2134ee2509bc320dc1dfbfc645ab91d53389f3a11d16a5e45a8423a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.23.1/hotspots-linux-x86_64.tar.gz"
      sha256 "b01af8fa28d71ff160088ea3ec412eacd97e2f97a57a4d938b15493f38747af1"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
