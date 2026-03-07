class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.5.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "6a24ea8e1a6a61ad7ad344af7dea44286bb40fb00d63f1e83146420fd30ecb5b"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.5.0/hotspots-linux-x86_64.tar.gz"
      sha256 "963d4e7fdaafee1f8a4783530465275825bcbc1056c63e505bf1fdcfd51aaf1e"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
