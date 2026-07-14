class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.31.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.31.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "06a57d1d4a8c7b6e3d5a02d63113bd189bb856ec024f0e3e4a2aafe1fc36a684"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.31.0/hotspots-linux-x86_64.tar.gz"
      sha256 "cc80b76d525bc28e96c5e5e74afe1b9d2bc6ef64fa9b845dace6f00e47f54efc"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
