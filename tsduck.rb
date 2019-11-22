class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.19-1520"
  url "https://github.com/tsduck/tsduck/archive/v3.19-1520.tar.gz"
  sha256 "f7274f6c4b19bf43d6de07de5fc1bd13cb3eea107f602db5d74271dffea391e3"

  depends_on "pcsc-lite"
  depends_on "cppunit" => :build
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build
  depends_on "dos2unix" => :build

  def install
    system "make", "NOTEST=true"
    system "make", "NOTEST=true", "install", "install-devel", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version"
  end

end
