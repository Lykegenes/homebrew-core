class Spotifyd < Formula
  version "v0.2.24"
  desc "A spotify daemon"
  homepage "https://github.com/Spotifyd/spotifyd"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Spotifyd/spotifyd/releases/download/#{version}/spotifyd-macos-full.tar.gz"
    sha256 "93b0d8e5d5ea4549fbdf5ec468a790ca28609cff876f2d09251e46a9ae323afa"
  end

  depends_on "dbus"
  depends_on "portaudio"

  def install
    bin.install "spotifyd"
  end

  test do
    system "#{bin}/spotifyd", "--version"
  end
end
