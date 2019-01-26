class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.16-1110"
  url "https://github.com/tsduck/tsduck/archive/v3.16-1110.tar.gz"
  sha256 "eb7d374cf79652d04aa66b10783b5021f25ef3295685b920cb54974770181bc3"

  depends_on "pcsc-lite"
  depends_on "cppunit" => :build
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build

  def install
    system "make", "NOTEST=true"
    system "make", "install", "install-devel", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version"
  end

end
