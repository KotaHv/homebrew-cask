cask "kazumi" do
  version "1.8.2"
  sha256 "9e4900545cbdd89508082299b326ffaf1a530f858591e35ff8442469e1e82aeb"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "基于自定义规则的番剧采集APP，支持流媒体在线观看，支持弹幕，支持实时超分辨率。"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kazumi.app"

  zap trash: "～/Library/Application Scripts/com.example.kazumi"
end
