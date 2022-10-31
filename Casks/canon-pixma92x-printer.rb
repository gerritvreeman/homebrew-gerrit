cask "canon-pixma92x-printer" do
  version "16.60.0.0,21.3"
  sha256 "69de4ee0049bf85821fe2120f66735ac92b94e6117e24fc28c58c15748fa28b9"

  url "https://gdlp01.c-wss.com/gds/4/0100011534/01/mcpd-mac-mx920-#{version.csv.first.dots_to_underscores}-ea#{version.csv.second.dots_to_underscores}.dmg",
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
