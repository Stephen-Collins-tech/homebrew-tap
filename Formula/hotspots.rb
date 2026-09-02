class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.35.5"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.5/hotspots-darwin-aarch64.tar.gz"
    sha256 "d8a769523aeee7d666c89364c023522c322d60873b434947be5ea20c152454da"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.35.5/hotspots-linux-x86_64.tar.gz"
      sha256 "0ade1da69dba298b49fb7eac2875b0eec4954808f535e5e303b9a3f91b4b97d6"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
