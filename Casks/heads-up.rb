cask "heads-up" do
  version "2.1"
  sha256 "e09cfd976ab345cdc78b754fc7025581aeafcd57a74ecb073938699c54677db7"

  url "https://github.com/TheSaifZaman/headsup/releases/download/v#{version}/HeadsUp-#{version}.zip"
  name "Heads Up"
  desc "Unmissable full-screen meeting alerts"
  homepage "https://github.com/TheSaifZaman/headsup"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Heads Up.app"

  caveats <<~EOS
    Heads Up is not notarized by Apple. If macOS blocks the first launch,
    right-click the app in /Applications and choose "Open", or reinstall with:
      brew reinstall --cask heads-up --no-quarantine
  EOS

  zap trash: [
    "~/Library/Application Support/HeadsUp",
    "~/Library/Preferences/local.headsup.app.plist",
  ]
end
