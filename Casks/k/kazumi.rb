cask "kazumi" do
  version "1.7.7"
  sha256 "a5df5e5d9e5f25c7dc0fbf105ab3a3aef0480f5c4dde484a25c9bfd4ca1f838f"

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
