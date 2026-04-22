class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.102.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.1/hmx-darwin-arm64"
      sha256 "471134cfa731142dee2a5eed49cbb2b22c21461cebeb27bc9ec80e1355312798"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.1/hmx-darwin-x64"
      sha256 "b03718d9de67f96dccca4f05b0f9243495d43ded3ca68a8fd86544faf00475d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.1/hmx-linux-arm64"
      sha256 "a22db7339379e876de6950b289e68b6f25948b2e88c395203d4fa33c5ee4d622"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.1/hmx-linux-x64"
      sha256 "3800a23198adba39b4b7717a701ebfff712faa0c717a0a2de31c6b0b0bf9798f"
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
