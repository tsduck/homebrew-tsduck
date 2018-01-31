class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.7-512"
  url "https://github.com/tsduck/tsduck/archive/v3.7-512.tar.gz"
  sha256 "e9db849c245e4f6c3bc1cfbe23681f7127086a9a6da26635d89e41538f602dbd"

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
