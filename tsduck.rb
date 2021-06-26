class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.io/"

  version "3.27-2438"
  url "https://github.com/tsduck/tsduck/archive/v3.27-2438.tar.gz"
  sha256 "4201037724ac08584b3a22d91558e9033e13f662a3c1062832ae6193c05b7582"
  
  head "https://github.com/tsduck/tsduck.git"

  depends_on "pcsc-lite"
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build
  depends_on "dos2unix" => :build
  depends_on "srt" => :build
  depends_on "openjdk" => :build

  def install
    system "make", "NOTEST=true", "-j8"
    system "make", "NOTEST=true", "install", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version=all"
  end

end
