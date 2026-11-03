class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.0.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "144ade2d58fe58b9633f2e4bb5ca8822b95361ad065d0155761f1d79080fa568"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.0.0/hotspots-linux-x86_64.tar.gz"
      sha256 "dc154363bfefe767188cf1cb7ed7c6ccf4cc8e00f24eb08929b446bc47d7a55a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
