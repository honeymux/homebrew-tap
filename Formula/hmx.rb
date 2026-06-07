class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.109.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.1/hmx-darwin-arm64"
      sha256 "62b1dd1c4d2d01534376d849617020b33cdc400ef65422b30fd30d235f218cce"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.1/hmx-darwin-x64"
      sha256 "856f05a8cf0f5ee59911d520236bbdffacb827430b33c84f774489e3bec15f81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.1/hmx-linux-arm64"
      sha256 "8ecb5009c8185c8b45e1ad75a33e7dd4e09d6e44bb88cc7cc177cef9b73aa0f6"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.1/hmx-linux-x64"
      sha256 "1998c8e362c0bc8abe235927d1f2293d509ffdf450df61ce253d9c78e13b870c"
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
