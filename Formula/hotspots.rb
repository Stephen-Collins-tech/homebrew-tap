class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.4.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "866838a3568378df800a8d95ce371436584eae9e2f9f68ced16ae84e67d97863"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.4.1/hotspots-linux-x86_64.tar.gz"
      sha256 "c437b86e12b6f319cf6cf980234eab5b8ef7329e2aa02a5bb564774b6ca12e47"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
