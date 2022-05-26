# from fxcoudert/homebrew-chemistry
class Platon < Formula
  desc "Multipurpose crystallographic tool"
  homepage "http://www.platonsoft.nl/platon/"
  url "http://www.platonsoft.nl/xraysoft/unix/platon.tar.gz"
  sha256 "03ec49861d9338459b1327b9776ad7af86c80266789a2b7e45c274763fd91df9"
  version "0"

  depends_on "gcc" # for gfortran
  depends_on "libx11"

  def install
    system "gunzip", "platon.f.gz", "xdrvr.c.gz"
    system "gfortran", "-o", "platon", "platon.f", "xdrvr.c",
                       "-I#{Formula["libx11"].opt_include}",
                       "-I#{Formula["xorgproto"].opt_include}",
                       "-L#{Formula["libx11"].opt_lib}", "-lX11"
    bin.install "platon"
    bin.install "check.def"

    rm_f "platon"
    system "tar", "xfz", "platon_html.tar.gz"
    pkgshare.install "platon"
    pkgshare.install "s810c.cif"
  end

  def caveats; <<~EOS
    PLATON does not have version numbers :(
    It gives a warning during download, and will not be updated automatically.
    EOS
  end

  test do
    output = shell_output("platon -o test.out s810c.cif </dev/null")
    assert_match "NORMAL END of PLATON", output
  end
end
