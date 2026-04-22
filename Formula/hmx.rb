class Hmx < Formula
  desc "A new UX layer for the terminal, built on tmux"
  homepage "https://github.com/honeymux/honeymux"
  version "0.102.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.2/hmx-darwin-arm64"
      sha256 "a131eecab467553379dcaa07262ad9fb16e5f674f5937d81a5ab325fe7525c6c"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.2/hmx-darwin-x64"
      sha256 "d60f2ae29ebfa9a44e6bab7752c4227990090f51f007f734d1a8f4c5286cedde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.2/hmx-linux-arm64"
      sha256 "c9cea0fa68edecb222b36a51352d00026b33434dd48d46bb030217878b78c10e"
    end
    on_intel do
      url "https://github.com/honeymux/honeymux/releases/download/v0.102.2/hmx-linux-x64"
      sha256 "eac625d5c251bfa8983b63ce4443f0f2a3bf716721718c4862faca9d95b516de"
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
