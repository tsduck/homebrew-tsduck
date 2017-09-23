class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.3-20170915"
  url "https://github.com/tsduck/tsduck/archive/v3.3-20170915.tar.gz"
  sha256 "b2fe39e3392833d8ffe1e9529b5c09086aa8ec0b2e207fc635434022e3949ee1"

  depends_on "pcsc-lite"
  depends_on "cppunit" => :build
  depends_on "gnu-sed" => :build
  depends_on "grep" => :build

  def install
    system "make"
    system "make", "install", "install-devel", "SYSPREFIX=#{prefix}"
  end

  test do
    system "#{bin}/tsp", "--version"
  end

end
