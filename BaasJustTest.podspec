#
# Be sure to run `pod lib lint BaasJustTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BaasJustTest'
  s.version          = '1.0.0'
  s.summary          = '测试'

  s.description      = <<-DESC
TODO: 测试用.
                       DESC

  s.homepage         = 'https://github.com/developerBGI/BaasJustTest'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'developerBGI' => 'lixiezhuang@gmail.com' }
  s.source           = { :git => 'https://github.com/developerBGI/BaasJustTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaasJustTest/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BaasJustTest' => ['BaasJustTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
