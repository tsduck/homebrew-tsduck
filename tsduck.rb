class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.10-674"
  url "https://github.com/tsduck/tsduck/archive/v3.10-674.tar.gz"
  sha256 "d7e78aa1c4c748b015f75fedba3a161b41c7ca6862df1951665a6baf6b1ecf9d"

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
