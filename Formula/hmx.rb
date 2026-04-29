class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.103.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.1/hmx-darwin-arm64"
      sha256 "801f9aac20fb7d7bdb5e85ebb2bc9c1dcba61162f56556b29882065b0526f565"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.1/hmx-darwin-x64"
      sha256 "2c1ddf0672912da172404ba855e09fd37dec48d72d47840f0d0c3207721e38ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.1/hmx-linux-arm64"
      sha256 "252455d7ced4aebaa24935b87480fb60f21756385e7e33c06152fcc72a5700ef"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.1/hmx-linux-x64"
      sha256 "dcfcfaa619827b5fbf88f7e390feb507eaeb4964a70b4bbd977c7f4f516c0da7"
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
