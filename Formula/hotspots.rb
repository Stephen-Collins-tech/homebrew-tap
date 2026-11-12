class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.7.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.7.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3acbf0160ff5d40e3919d5cbf5fa6ae60c523ff788fc4e283a43b3a6a4b23e4d"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.7.0/hotspots-linux-x86_64.tar.gz"
      sha256 "34b86cbb168ee2416aad7f31c7a6a2cbd7079831277cb2d534c0fa81a9804cab"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
