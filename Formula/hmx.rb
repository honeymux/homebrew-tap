class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.104.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.104.0/hmx-darwin-arm64"
      sha256 "8d4208906207a17a29575e7db82601a6572139d0b84fc83aa2a1b637e5610d00"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.104.0/hmx-darwin-x64"
      sha256 "f11f7425a622e4571baa67c57f49e05d48cd85a81d5fbe8848100fd963d3280c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.104.0/hmx-linux-arm64"
      sha256 "c555b0ac9533b08467c11d9ea8919505c44cbe8d6b5836dcb3aa63183025bbf0"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.104.0/hmx-linux-x64"
      sha256 "d8e18ee3640770b451c0afd7760d570ca027a0917b19c03c53d1e0878b91907e"
    end
  end

  livecheck do
    url "https://github.com/honeymux/honeymux/releases/latest"
    strategy :github_latest
  end

  def install
    bin.install Dir["hmx-*"].first => "hmx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hmx -V")
  end
end
