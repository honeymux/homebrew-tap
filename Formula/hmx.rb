class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.102.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.3/hmx-darwin-arm64"
      sha256 "13669352e02e0cd327a73a4843021abd156f5e05bbb5b2fec11e37c586911ea9"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.3/hmx-darwin-x64"
      sha256 "59a44445188c66212eea15dd1c1b851c50b73bd4b52d96722cba8f672c55a35d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.3/hmx-linux-arm64"
      sha256 "ef98bea9cb682f49c86aca0879ea7b7b24f054e14296c14e008f41f8d822c16b"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.3/hmx-linux-x64"
      sha256 "c517fe32570cdc09234d9dff9f42af681909cde09e3041ed4fc39db3b4222f55"
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
