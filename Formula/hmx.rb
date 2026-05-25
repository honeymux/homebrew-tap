class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.108.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.2/hmx-darwin-arm64"
      sha256 "071afbc0fd36c5f30e9bf83d7ba630c27df3a208563664deee84d51740771c0f"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.2/hmx-darwin-x64"
      sha256 "d4dacab6b33c9d3ee11f71be8d8d8247c3eca2f61cd6058b5fcf1ffb0515fe41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.2/hmx-linux-arm64"
      sha256 "f490fecbe75532257610b14be8c42b1825130ad7f36800a31ddbc4c24976d7dc"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.2/hmx-linux-x64"
      sha256 "9c3b918640d1f6eee7cd1c0ea455a57b8e69462480a1d0d45407d16e64cf1a66"
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
