class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.105.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.105.0/hmx-darwin-arm64"
      sha256 "7642286761b72737a415289cfaf16eb9ef8e02c5db5887eb2e5bacb38665a872"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.105.0/hmx-darwin-x64"
      sha256 "60c4d50a9566419ce2bd36b7cc1269db20485d0f30a5fe37a256e89bd5025fd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.105.0/hmx-linux-arm64"
      sha256 "366bb23de9b443e3fe0a93408289d08279b08cf85ebb450593f7d132deb4f2e2"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.105.0/hmx-linux-x64"
      sha256 "2b0bd3aec336ac3b87394ff866c1bf56515da3896888ebb9ba872fbd09908ce9"
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
