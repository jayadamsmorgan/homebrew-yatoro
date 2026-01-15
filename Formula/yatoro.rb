class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  url "https://github.com/jayadamsmorgan/Yatoro.git",
      tag:      "v0.3.4",
      revision: "7be1c870cd19fdb3a12221e257da7314c3bfd72b"
  license "MIT"

  depends_on macos: :sonoma

  depends_on "notcurses"

  def install
    system "swift", "build", "--disable-sandbox", "-Xcc", "-DNCURSES_UNCTRL_H_incl"
    bin.install ".build/debug/yatoro"
  end

  test do
    system "#{bin}/yatoro", "--version"
  end
end
