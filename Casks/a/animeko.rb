cask "animeko" do
  arch arm: "aarch64.dmg", intel: "x86_64.zip"

  version "4.11.1"
  sha256 arm:   "3054d31acf841f403ca58d2ea21c778fba93d09bc2ca75221ac50241dca93d25",
         intel: "049a8c1b413e1619fc7b24807f6d24d3bb0fdd4120b9d9fc30ae029e95e663bb"

  url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-#{arch}",
      verified: "github.com/open-ani/animeko/"
  name "Animeko"
  desc "支持云同步观看记录 (Bangumi)、多视频数据源、缓存、弹幕、以及更多功能，提供尽可能简单且舒适的追番体验。"
  homepage "https://myani.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ani.app"

  zap trash: "~/Library/Preferences/me.him188.ani.app.desktop.plist"
end
