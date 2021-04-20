class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.io/"

  version "3.26-2349"
  url "https://github.com/tsduck/tsduck/archive/v3.26-2349.tar.gz"
  sha256 "79fc421ca1c938badc3d5f236ab739c3540057d1084d445da7c955eb2e99087d"
  
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
