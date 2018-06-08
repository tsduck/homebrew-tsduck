class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.12-781"
  url "https://github.com/tsduck/tsduck/archive/v3.12-781.tar.gz"
  sha256 "1ff1aceb410ad2deb191bf8c52db1b230059b1583c37f3ac46aae5a72aa6814b"

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
