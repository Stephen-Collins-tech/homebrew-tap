class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.7.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.7.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "fc1bbf42b7dc900bb2b9a0b1fd50363d58ac198369d2a02bdf77052102a6564e"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.7.1/hotspots-linux-x86_64.tar.gz"
      sha256 "f8e8351f9405a32d97ff22c9b0ed035d89fb763ca747a89254b66de77f6240fe"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
