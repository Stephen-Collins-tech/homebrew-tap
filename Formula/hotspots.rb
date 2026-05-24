class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.20.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "d728509ea7827076d287781f1870493c5f505ef8fe06bdd402a3feb4b7eae4f7"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.20.0/hotspots-linux-x86_64.tar.gz"
      sha256 "5969945519657c6f24e7c43ff98f4927949afa08899cffaaebc99a0c34595cc5"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
