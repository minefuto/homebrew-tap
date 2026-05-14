cask "fixcreen" do
  version "1.0.0"
  sha256 "c7a482aac4e292d9a570446a1bf769ce7901e9887dbd91770a86b17fc907d61f"

  url "https://github.com/minefuto/FiXcreen/releases/download/v#{version}/FiXcreen-#{version}.zip"
  name "FiXcreen"
  desc "Locks screen positions and block mouse input on specified displays"
  homepage "https://github.com/minefuto/FiXcreen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "FiXcreen.app"

  zap trash: [
    "~/Library/Preferences/com.minefuto.FiXcreen.plist",
    "~/Library/Saved Application State/com.minefuto.FiXcreen.savedState",
  ]
end
