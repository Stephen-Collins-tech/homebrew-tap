class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.25.3"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.3/hotspots-darwin-aarch64.tar.gz"
    sha256 "016a9626d51479bf2ae5fe2230f4e7100749723e01e7da5de85247966bcb59ca"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.25.3/hotspots-linux-x86_64.tar.gz"
      sha256 "5db84b7855c4e38cf8ec0a146b3e32b9ae2999c7a75a8db96f84d51e6d63b407"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
