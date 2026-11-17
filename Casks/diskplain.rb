cask "diskplain" do
  version "0.9,2"
  sha256 "022fa7d5d8ab67e0bff8d7895933389e26a394f0c73ed26d96983a5df8aebe33"

  url "https://diskplain.limedot.io/download/Diskplain-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Diskplain"
  desc "Disk space analyser that explains what each folder is"
  homepage "https://diskplain.limedot.io/"

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
