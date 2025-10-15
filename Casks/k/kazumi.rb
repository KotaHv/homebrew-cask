cask "kazumi" do
  version "1.8.4"
  sha256 "9b511e5ac39c5cee6fc3406e10946c53f93be995d8b0f070160a95002c72f457"

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
