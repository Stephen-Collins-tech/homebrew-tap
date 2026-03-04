class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "1.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.2.2/hotspots-darwin-aarch64.tar.gz"
    sha256 "197c131b2bc95d12065e21f1a34236c8ab53d8aae5bfa66fd375687f66072a04"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v1.2.2/hotspots-linux-x86_64.tar.gz"
      sha256 "2eb4fd793c557be7a680071737f5fdc144d62bfe53de82d9698aeb4cf4261c14"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
