class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.8.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.8.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "98a72a996ab30a7670586018cbb4e1c942bae8015f8cd175163213893ad5c377"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.8.1/hotspots-linux-x86_64.tar.gz"
      sha256 "888b84fc1d0f84c4b22b854c79f19972216d653357cc0e43abb4f468d8a2a1e4"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
