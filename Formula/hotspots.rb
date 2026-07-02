class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.27.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.27.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "3ce03f4c1d79f881f12e6e443fa8e7ed3afa263ba5eefaa9fa288561566b40b1"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.27.0/hotspots-linux-x86_64.tar.gz"
      sha256 "f585e9ba594fcf90389971703346297cedcf947b12b6b84536eaac748a11f6a1"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
