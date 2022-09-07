cask "canon-pixma92x-printer" do
  version "16.40.1.0,21.3"
  sha256 "6cd502b86c6ffe91c569b78de44023b9ae468334ced3b9920ccfef7635a8e08d"

  url "https://gdlp01.c-wss.com/gds/0/0100005570/09/mcpd-mac-mx920-#{version.csv.first.dots_to_underscores}-ea#{version.csv.second.dots_to_underscores}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Pixma 92X Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon Pixma MX 92X printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    skip "No version information available"
  end

  pkg "PrinterDriver_MX920 series_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.mx920-#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
