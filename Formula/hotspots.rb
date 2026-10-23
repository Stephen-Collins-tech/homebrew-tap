class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.2.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "85661bb7a1b1492a1f1cba2d05436d9d89b53b46d9911bc57cc68acfdf9f0a6a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.2.1/hotspots-linux-x86_64.tar.gz"
      sha256 "f597d7a380cde429e4788b9167d8b269e5cdc4c96f7eeccc3d62cfb4fe34ed7e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
