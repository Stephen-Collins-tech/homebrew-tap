class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "5.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.0/hotspots-darwin-aarch64.tar.gz"
    sha256 "c4335d32cd47567c111e39326d486599b99a33339bf6115138094d61463e9eda"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v5.0.0/hotspots-linux-x86_64.tar.gz"
      sha256 "e14f04392862b8749d954ea78c876b0967a4e7457976718346c406f728ebc802"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
