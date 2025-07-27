cask "kazumi" do
  version "1.7.5"
  sha256 "ee8793a31907fcf69e138d671f0b9913de88bcb5c487bdf2d720453636744f5f"

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
