class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.33.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "676a686aca1faccd0a051494858869abb77828e9bcd5bcff83f00d23fa5eb5f6"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.33.1/hotspots-linux-x86_64.tar.gz"
      sha256 "876dd3da7762782017012a7d687fcf11846a79e9be4eb7373063d60ae34a7cf4"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
