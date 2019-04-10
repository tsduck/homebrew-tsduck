class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.17-1189"
  url "https://github.com/tsduck/tsduck/archive/v3.17-1189.tar.gz"
  sha256 "a63ca9d34466045c1525e27e21b2a5c7eed9c169297d699cfa1c5d3dcc7e070b"

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
