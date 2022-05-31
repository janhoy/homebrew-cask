cask "openlens" do
  version "5.5.2"

  sha256 "1bfa9c0be8c0f25c36a038376ae04a4c062b76d6a365f8b3680f46636e901d3e"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version.csv.first}/OpenLens-#{version.csv.first}.dmg"
  name "OpenLens"
  desc "Kubernetes IDE, Open Source"
  homepage "https://github.com/MuhammedKalkan/OpenLens"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Caches/OpenLens",
    "~/Library/Preferences/com.electron.open-lens.plist",
    "~/Library/Saved Application State/com.electron.open-lens.savedState",
  ]
end
