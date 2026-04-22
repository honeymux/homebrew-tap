class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.102.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.0/hmx-darwin-arm64"
      sha256 "cd161eadcf69e06c990e7489ad86576a9239c42ee44da7d9929bb8f1b9b89c29"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.0/hmx-darwin-x64"
      sha256 "f96cc20883e6940bcf3499fee970d56979462508441953bdfd9a51b7eb36c051"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.0/hmx-linux-arm64"
      sha256 "d0b8718ce9af0c6561ab7a1b690b70a0dfa8246124845f5da443dd14208ff67d"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.0/hmx-linux-x64"
      sha256 "2e72fffce1d3c48bc06940d69266c5045bf7fdf31c38a6720753223a0ebecee3"
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
