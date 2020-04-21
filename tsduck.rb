class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.20-1689"
  url "https://github.com/tsduck/tsduck/archive/v3.20-1689.tar.gz"
  sha256 "f4ba2e95b5c0b2472d0de52da9a2252245a506ec8ca068b34153c8aa879c3293"

  depends_on "pcsc-lite"
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build
  depends_on "dos2unix" => :build
  depends_on "srt" => :build

  def install
    system "make", "NOTEST=true"
    system "make", "NOTEST=true", "install", "install-devel", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version"
  end

end
