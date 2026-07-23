cask "heads-up" do
  version "3.0"
  sha256 "890b62dabe8a526dda3335e07f91955c3fb1ad8aa43deba90b199215e646d1dc"

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
