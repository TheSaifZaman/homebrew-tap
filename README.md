# TheSaifZaman's Homebrew Tap

```sh
brew tap TheSaifZaman/tap
brew trust TheSaifZaman/tap
brew install --cask heads-up
xattr -dr com.apple.quarantine "/Applications/Heads Up.app"
```

The `xattr` command tells macOS to accept the app (ad-hoc signed, not
notarized) so it opens automatically.

| Cask | Description |
|---|---|
| `heads-up` | Unmissable full-screen meeting alerts for macOS ([repo](https://github.com/TheSaifZaman/headsup)) |
