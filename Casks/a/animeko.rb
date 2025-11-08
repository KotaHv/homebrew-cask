cask "animeko" do
  arch arm: "aarch64.dmg", intel: "x86_64.zip"

  version "5.2.0"
  sha256 arm:   "e3d1eb0b93c071e4da7d71733f2b07951c02a1542b73ed74d9fef450a0e70e04",
         intel: "ec068a318ca99d7e01fd21d3027eaa2274e4dfaaa8c2d29244e20b042c397e62"

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
