class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.24-2109"
  url "https://github.com/tsduck/tsduck/archive/v3.24-2109.tar.gz"
  sha256 "7d2ca53be65d1de4248f906db9cd10fa5edc9148d2c5840a0398de9358942c5d"

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
