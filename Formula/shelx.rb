class Shelx < Formula
  desc "A set of programs for the determination of small (SM) and macromolecular (MM) crystal structures by single crystal X-ray and neutron diffraction"
  homepage "https://shelx.uni-goettingen.de"
  url "file:/Volumes/HMMM/Installers/shelx/shelx-mac.zip"
  sha256 "671abb159e51a253520ffbe7f55427cca70076752c862b3f8ef80dde6ec24316"
  version "0"

  def install
    system "bunzip2", "anode.bz2", "ciftab.bz2", "shelxc.bz2", "shelxd.bz2", "shelxe.bz2", "shelxl.bz2", "shelxs.bz2", "shelxt.bz2", "shredcif.bz2"
    bin.install "anode"
    bin.install "ciftab"
    bin.install "shelxc"
    bin.install "shelxd"
    bin.install "shelxe"
    bin.install "shelxl"
    bin.install "shelxs"
    bin.install "shelxt"
    bin.install "shredcif"
  end

  def caveats; <<~EOS
    SHELX does not have version numbers :(
    It gives a warning during download, and will not be updated automatically.
    EOS
  end
end
