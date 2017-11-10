class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.4-20171110"
  url "https://github.com/tsduck/tsduck/archive/v3.4-20171110.tar.gz"
  sha256 "30b151f00c9a5acea8ce91f7828e54b45826efebce2549ddedae9671dfd82151"

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
