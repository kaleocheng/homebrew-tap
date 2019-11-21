cask 'sourcetrail' do
  version '2019.4.61'
  sha256 '03ffaa3152121d2131229b5df5599967c5c1b30fbe489b08dafeba07806fe1ac'

  url "http://res.kaleocheng.cn/Sourcetrail_2019_4_61_macOS_64bit.dmg"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
