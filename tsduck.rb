class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.8-534"
  url "https://github.com/tsduck/tsduck/archive/v3.8-534.tar.gz"
  sha256 "cc096a05942f21760dee975bf0a894119093c9a2cdb2104a8af92ab57b0b9308"

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
