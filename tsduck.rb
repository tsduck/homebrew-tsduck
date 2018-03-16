class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.9-619"
  url "https://github.com/tsduck/tsduck/archive/v3.9-619.tar.gz"
  sha256 "cf819b9adec6308812c6bf91487f84a2c31e3cd5516e69645b1a1c9081670767"

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
