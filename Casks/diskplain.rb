cask "diskplain" do
  version "0.9,3"
  sha256 "1e5ca653216ad8c4283f580218845097da9bc770287224594784e19b63907ab6"

  url "https://diskplain.limedot.io/download/Diskplain-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Diskplain"
  desc "Disk space analyser that explains what each folder is"
  homepage "https://limedot.io/diskplain/"

  livecheck do
    url "https://diskplain.limedot.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Diskplain.app"

  zap trash: [
    "~/Library/Application Support/Diskplain",
    "~/Library/Caches/io.limedot.Diskplain",
    "~/Library/HTTPStorages/io.limedot.Diskplain",
    "~/Library/Preferences/io.limedot.Diskplain.plist",
    "~/Library/Saved Application State/io.limedot.Diskplain.savedState",
  ]
end
