cask "passband" do
  version "0.0.16"
  sha256 "f71879e24f90a0af861691a85f564e3d7875888ac97edd032386a729d7af1620"

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
