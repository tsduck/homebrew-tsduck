class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.3-20170924"
  url "https://github.com/tsduck/tsduck/archive/v3.3-20170924.tar.gz"
  sha256 "8d8a336cbc03ba2480d3c480e9e7dfaea47b9f05bb949ab7a7451491a5e74156"

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
