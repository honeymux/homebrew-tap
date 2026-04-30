class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.103.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.2/hmx-darwin-arm64"
      sha256 "3dae960cf42570d8f820dc89b3a3c250ad65230ad7158536cdb67b405419837e"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.2/hmx-darwin-x64"
      sha256 "2d8db1734fd422acf6a59ab7df25fc1d890f188b4efef72c118ade466c075fc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.2/hmx-linux-arm64"
      sha256 "a9e349806e995c47ada520a54249b44d0027293379c4ba80b3bedcd530be0f07"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.2/hmx-linux-x64"
      sha256 "a42ea81833c99b61a6a8908a5a5c53af9f3b2860096076ce9323120afb628505"
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
