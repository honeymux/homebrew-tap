class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.103.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.0/hmx-darwin-arm64"
      sha256 "725e4db558068071279a0cfcf526b4110f850dbfc9015083ca03a0a45ba5424f"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.0/hmx-darwin-x64"
      sha256 "02fe5100b6f2abede38cab15d368214c1bbc04cf71f3adf83dfc70c009b42762"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.0/hmx-linux-arm64"
      sha256 "35303f11df2e1e679e8d10af500a72fe49831bc1aea4144d73c3d2b5f7d97b4f"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.103.0/hmx-linux-x64"
      sha256 "b9ff841674d22078416335854374e0d6f84556b1db07d647bf54f3e1819bb677"
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
