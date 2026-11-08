class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.6.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "6bee1391f5a2a19f9784863d4e57a26c60da1c648b8093ccd100c489d4060c36"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.0/hotspots-linux-x86_64.tar.gz"
      sha256 "0e252ed4da39740f0874dc24228d06378ebd29e814bc86729d3fd22e09583c92"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
