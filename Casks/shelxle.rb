cask "shelxle" do
  version "1.0.1428"
  sha256 "8d7dfd6505422f9b9aea2acb37c428fdb1937876d77b5770c8f243a920269c9c"

  url "file:/Volumes/HMMM/Installers/shelxle/shelxle-Qt5-#{version}.dmg"
  name "shelxle"
  desc "A graphical user interface for SHELXL"
  homepage "https://www.shelxle.org/shelx/eingabe.php"

  app "shelxle.app"
end
