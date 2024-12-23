class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  version "0.3.0"
  license "MIT"

  depends_on "notcurses"

  on_macos do
    on_arm do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.0/yatoro_macOS-arm64.zip"
      sha256 "746a614298464bf5c4955d015c7b1cb9b818a2e4a723f92c0c040459640f0780"
    end

    on_intel do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.0/yatoro_macOS-x86_64.zip"
      sha256 "0569b09956d45980bc3e1173e956315e09350a0c4ff91630a54d0385087d2425"
    end
  end

  def install
    bin.install "yatoro"
  end

  test do
    system "#{bin}/yatoro", "--version"
  end
end
