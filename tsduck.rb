class Tsduck < Formula

  desc "MPEG Transport Stream Toolkit"
  homepage "https://tsduck.github.io/"

  version "3.6-491"
  url "https://github.com/tsduck/tsduck/archive/v3.6-491.tar.gz"
  sha256 "3ce2a26ed112385d5016b1d5d20fb0ebcb5c811cc84dbac5a3351bb6b6d9bccf"

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
