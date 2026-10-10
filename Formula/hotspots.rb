class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.42.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.42.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "421f76f6818a544bd13ed8b5050da2905bbd685c3bfff5c6597b835cbd4dabb7"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.42.1/hotspots-linux-x86_64.tar.gz"
      sha256 "c1c23d57c20975c4c8c193483a7092b8ba065a08df6d424decbef2fb119e582a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
