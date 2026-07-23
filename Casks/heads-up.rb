cask "heads-up" do
  version "2.1"
  sha256 "3d98b4054e372ce98b72602d5b50ca60007bba54f75a4a1a734e9d1e135ebb2a"

  url "https://github.com/TheSaifZaman/headsup/releases/download/v#{version}/HeadsUp-#{version}.zip"
  name "Heads Up"
  desc "Unmissable full-screen meeting alerts"
  homepage "https://github.com/TheSaifZaman/headsup"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Heads Up.app"

  caveats <<~EOS
    Heads Up is not notarized by Apple. To let macOS accept it so it opens
    automatically, run:
      xattr -dr com.apple.quarantine "/Applications/Heads Up.app"
  EOS

  zap trash: [
    "~/Library/Application Support/HeadsUp",
    "~/Library/Preferences/local.headsup.app.plist",
  ]
end
