class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.5-419"
  url "https://github.com/tsduck/tsduck/archive/v3.5-419.tar.gz"
  sha256 "769b2661c0ecb30a7fda2331f8f5db3a2cd45131c3627c3f765aef5d50df7e10"

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
