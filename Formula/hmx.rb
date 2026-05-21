class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.108.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.1/hmx-darwin-arm64"
      sha256 "31db8694f62145f5e530850675103e1c969206ef94c1a4240e473c299cd0f48e"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.1/hmx-darwin-x64"
      sha256 "e229d4fb7d0dd5ba2a9526ed2ba220e9d71b382f132641048bda1a45b9363b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.1/hmx-linux-arm64"
      sha256 "28d0b1534ce232c184ab1cca7f68677272b6aa3eed859e2c71ade929d4e0e1e0"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.108.1/hmx-linux-x64"
      sha256 "77b2c75448a975fbe4ca13a17ba9b23ff0a770a21f444c6d2ebfefae1a1dfdaa"
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
