class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.106.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.106.0/hmx-darwin-arm64"
      sha256 "22e02e8c7c50259c87ab085d2bdc6420ebec81a7bdbeaf2bec45090ca7c673ac"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.106.0/hmx-darwin-x64"
      sha256 "c589db3a93fa0b16794bdf7b3a8fc731a085887fb217de1d6b062b203ad0da9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.106.0/hmx-linux-arm64"
      sha256 "6cbb836ac03322bd84daa62718738ab4e191aa743e0eba1392f9006185ea1681"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.106.0/hmx-linux-x64"
      sha256 "a82ab73b00ba8f43c47d033cea763f948295e68684daa28fd7dcde17a4276cbd"
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
