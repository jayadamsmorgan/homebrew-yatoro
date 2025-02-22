class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  version "0.3.2"
  license "MIT"

  depends_on "notcurses"

  on_macos do
    on_arm do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.2/yatoro_macOS-arm64.zip"
      sha256 "ddd134c64d21125f66ff0fd71a59831826228608c84497d289f0883cf6517409"
    end

    on_intel do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.2/yatoro_macOS-x86_64.zip"
      sha256 "92c8dc16191608903f020fde89bdb80de4b6c986043c2c609fa1515e86975ec4"
    end
  end

  def install
    bin.install "yatoro"
  end

  test do
    system "#{bin}/yatoro", "--version"
  end
end
