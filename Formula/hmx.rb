class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.108.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.0/hmx-darwin-arm64"
      sha256 "e3ed33765502b9e7debf8cac24601ad5aa8d9d82160f126514a1e1755e9f776a"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.0/hmx-darwin-x64"
      sha256 "67ecc44837a9ee11377d970103bdd16e30e919dfce1745d43f555c1753fa8445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.0/hmx-linux-arm64"
      sha256 "1258cce2e3366e285e70ca5661a788f7bf4295e9c6ca051d123949e24009d58b"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.0/hmx-linux-x64"
      sha256 "ec25d23b0cea25809310c6018e8473b47a5b32e04ca1533c1c84f60786099bc2"
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
