cask "passband" do
  version "0.0.15"
  sha256 "25ab4ab8d0423b4cfaee4444e98fe0f9a497f1f7e647efc8ce3930db56dc1aa6"

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
