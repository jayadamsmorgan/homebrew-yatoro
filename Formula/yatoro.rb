class Yatoro < Formula
  desc "VIM-like Apple Music Player in Terminal"
  homepage "https://github.com/jayadamsmorgan/Yatoro"
  version "0.3.1"
  license "MIT"

  depends_on "notcurses"

  on_macos do
    on_arm do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.1/yatoro_macOS-arm64.zip"
      sha256 "8ab8fbda0fed8580c480d428b13201fcb4c95138e731b09befc41b5ea5a25aff"
    end

    on_intel do
      url "https://github.com/jayadamsmorgan/Yatoro/releases/download/v0.3.1/yatoro_macOS-x86_64.zip"
      sha256 "2a9db540c6c20c5c2bb47314b935834755608690d8f66d740406782678abdb10"
    end
  end

  def install
    bin.install "yatoro"
  end

  test do
    system "#{bin}/yatoro", "--version"
  end
end
