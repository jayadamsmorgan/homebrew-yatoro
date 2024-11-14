class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.2.0/yatoro-0.2.0.zip"
  sha256 "fd8f00a2072a0a9dc96b70f737ff5285ff54ce983f3748fb7c43cb6de42b2b64"
  license "MIT"

  depends_on "notcurses"

  def install
    bin.install "yatoro"
  end
end
