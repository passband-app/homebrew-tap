cask "passband" do
  version "0.0.19"
  sha256 "c278a1b5ba888c24a428ec91eb1b20aab9eebb17afb307dd956ba08e558382e5"

  url "https://passband.app/download/Passband-#{version}.zip"
  name "Passband"
  desc "Mac client for squelchd, the self-hosted email triage daemon"
  homepage "https://passband.app/"

  livecheck do
    url "https://passband.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Passband.app"

  zap trash: [
    "~/Library/Application Support/Passband",
    "~/Library/Caches/app.passband.client",
    "~/Library/Preferences/app.passband.client.plist",
    "~/Library/Saved Application State/app.passband.client.savedState",
  ]
end
