cask "animeko" do
  arch arm: "aarch64.dmg", intel: "x86_64.zip"

  version "5.0.1"
  sha256 arm:   "cf4d9860ad2606d18c675775c19244f93fbaa681084b19e90a82de0520538842",
         intel: "4786975e55efde836d8040b58888dd4aa6b281947ba4d3b48a2191d6ca338504"

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
