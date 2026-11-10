class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "3.6.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "a25edbfb5fef65127b233f4b618e1a14ebe624075eebfa49941816f2f1d01c9a"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v3.6.2/hotspots-linux-x86_64.tar.gz"
      sha256 "ee12829d8049a5184f3a6071f70e05de0408194c417855750b22794880e174b3"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
