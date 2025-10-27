cask "animeko" do
  arch arm: "aarch64.dmg", intel: "x86_64.zip"

  version "5.1.0"
  sha256 arm:   "06286f21c11c9f9b66f4f31862609ca4d68f1b98c3ad2b22e56e2e23fe6ef458",
         intel: "371ad79d2767b33327e5471fcebab5ea65e3bea9c0c2cf95235411e8b19202a7"

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
