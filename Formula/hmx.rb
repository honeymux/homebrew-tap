class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.109.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.0/hmx-darwin-arm64"
      sha256 "1454948edab6a8c70389d5c275e89a431b2c93e40221d4ee2baf1a819314698c"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.0/hmx-darwin-x64"
      sha256 "767a039cae6fba93476c7c06709a078254eb76fbbfe45f668553808cbcadd806"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.0/hmx-linux-arm64"
      sha256 "01e9db93997965be2383dccb04ce243c19beab3c38a6327a36d878e5ff8989ec"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.109.0/hmx-linux-x64"
      sha256 "2e770f49addbe3a7a41a7e53ac7dd42f83519803c431ceec57b68ff94b5e0bdb"
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
