class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.11-716"
  url "https://github.com/tsduck/tsduck/archive/v3.11-716.tar.gz"
  sha256 "e31afcc2e2846fb04733286148681929fe6ef2d5b6ba8b2f5143782196ee00bf"

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
