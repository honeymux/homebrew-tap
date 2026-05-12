class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.107.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.107.0/hmx-darwin-arm64"
      sha256 "f9a560051c0c90d848d0bb5811d21482ed271974d30fb2cdc7cc57a59358afa0"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.107.0/hmx-darwin-x64"
      sha256 "42fd9eeeb49924b3c3b3df4e73215b2d4b096a17856a2ad3f7bb7db2679fa9c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.107.0/hmx-linux-arm64"
      sha256 "8e48fbdf3b8956f0af4dfb0fe708af0cd4b66ec57eae01a19d35d6a0ffdbe033"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.107.0/hmx-linux-x64"
      sha256 "d6e0a4c8c11e810a8e4f669039be63f18ac5e80dd9a50244c5539d52f2c46511"
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
