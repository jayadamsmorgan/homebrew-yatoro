class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  url "https://github.com/jayadamsmorgan/Yatoro.git",
      tag:      "v0.3.3"
  license "MIT"
  revision "2df718faa9e15f859f51a6636fe71feafa847d3d"

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
