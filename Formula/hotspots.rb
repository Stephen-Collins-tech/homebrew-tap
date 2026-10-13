class Hotspots < Formula
  desc "Static analysis CLI for TypeScript that computes Local Risk Score (LRS)"
  homepage "https://hotspots.dev"
  version "2.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.0.1/hotspots-darwin-aarch64.tar.gz"
    sha256 "4b9e969913615b1e99652554ac43c9c2509ef73c020d539e924d7027639c03cf"
  end

  on_linux do
    on_amd64 do
      url "https://github.com/Stephen-Collins-tech/hotspots/releases/download/v2.0.1/hotspots-linux-x86_64.tar.gz"
      sha256 "ab504bac97482de42776ffcd07268b31af827f9a923f52fe12873efdb73f147a"
    end
  end

  def install
    bin.install "hotspots"
  end

  test do
    system "#{bin}/hotspots", "--version"
  end
end
