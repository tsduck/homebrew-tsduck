class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.25-2237"
  url "https://github.com/tsduck/tsduck/archive/v3.25-2237.tar.gz"
  sha256 "f2c1c86da32b625ef723c0c33090718926767d44db406e655a95322934eaa195"

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
