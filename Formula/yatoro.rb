class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  url "https://github.com/jayadamsmorgan/Yatoro/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "518de974099b11ceb674026e3578f8f09b3fc26e32d83a9eb466a44633360521"
  version "0.3.3"
  license "MIT"

  depends_on "notcurses"

  def install
    # Give Versionator a git repo to query (tarballs don't have .git)
    system "git", "init"
    system "git", "config", "user.email", "brew@localhost"
    system "git", "config", "user.name", "Homebrew"
    system "git", "add", "."
    system "git", "commit", "-m", "Homebrew build"
    system "git", "tag", "v#{version}"

    system "swift", "build", "-c", "release", "--disable-sandbox", "-Xcc", "-DNCURSES_UNCTRL_H_incl"
    bin.install ".build/release/yatoro"
  end

  test do
    system "#{bin}/yatoro", "--version"
  end
end
