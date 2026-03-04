class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v#{version}/hotspots-darwin-aarch64.tar.gz"
    sha256 "537cb7fc6a7cc6197a631a51392265f81e87bcbbb81d5fc609da7f8d4bd74ed9"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v#{version}/hotspots-linux-x86_64.tar.gz"
      sha256 "319565544c6585543a4b313309427585cf0a4919a7ce36be223559e5b24a5ccf"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
