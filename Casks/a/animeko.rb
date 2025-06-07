cask "animeko" do
  arch arm: "aarch64.dmg", intel: "x86_64.zip"

  version "4.11.0"
  sha256 arm:   "d2d5e1d3a23ae6f0b2542c78074f707d2e204396cc3e6c0aabcb0ceb053215c9",
         intel: "427332071396278313d299b83ba87b7cf04375c7fae6d5e43fa4e352049229a2"

  url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-#{arch}",
      verified: "github.com/open-ani/animeko/"
  name "Animeko"
  desc "Animeko 支持云同步观看记录 (Bangumi)、多视频数据源、缓存、弹幕、以及更多功能，提供尽可能简单且舒适的追番体验。"
  homepage "https://myani.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ani.app"

  zap trash: "~/Library/Preferences/me.him188.ani.app.desktop.plist"
end
