class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.21-1819"
  url "https://github.com/tsduck/tsduck/archive/v3.21-1819.tar.gz"
  sha256 "68adbb34ee0b2d83ed97c6b92ebf27dadb950ab60467ec229ec133a1a3127a9b"

  depends_on "pcsc-lite"
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build
  depends_on "dos2unix" => :build
  depends_on "srt" => :build

  def install
    system "make", "NOTEST=true"
    system "make", "NOTEST=true", "install", "install-devel", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version"
  end

end
