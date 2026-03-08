class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.5.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.5.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "638b13119dd242b899360e319261188e0fafb15691a206b8804a149a18edc66c"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.5.1/hotspots-linux-x86_64.tar.gz"
      sha256 "14275a625d1bb7068a4ccbef8948173b6c30c243c24666d46da3f815c0d11f8d"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
