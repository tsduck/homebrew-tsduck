class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.23-1965"
  url "https://github.com/tsduck/tsduck/archive/v3.23-1965.tar.gz"
  sha256 "b0b717714ee5b5d9c554169501b002ab34bec7586ae9561fe2728244a39b886c"

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
