class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.3-20170930"
  url "https://github.com/tsduck/tsduck/archive/v3.3-20170930.tar.gz"
  sha256 "7c1a67d7a065cea545becbf81e08d13970edc83c1d58be2ef3c4abc046d43112"

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
