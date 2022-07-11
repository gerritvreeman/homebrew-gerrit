cask "colorpicker-umn" do
  version "0.0.1"
  sha256 :no_check

  url "https://github.com/gerritvreeman/homebrew-gerrit/tree/main/assets/colors.zip"
  name "UMN colorpicker"
  homepage "https://university-relations.umn.edu/resources/colors-and-type"

  colorpicker "colors/UMN.clr"
end