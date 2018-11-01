class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.15-1008"
  url "https://github.com/tsduck/tsduck/archive/v3.15-1008.tar.gz"
  sha256 "0d00f1ffba56ccbd0c0256087baf43c199cd55fd64513a3a090f7e1058b1990d"

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
