class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.13-834"
  url "https://github.com/tsduck/tsduck/archive/v3.13-834.tar.gz"
  sha256 "e65c61f42dbcf84e076d89ecee0b97d08e4ffc36ef53e221b4455601400c93ed"

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
