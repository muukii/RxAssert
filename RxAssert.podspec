#
# Be sure to run `pod lib lint RxAssert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RxAssert"
  s.version          = "0.1.0"
  s.summary          = "Check condition on Stream"
  s.description      = <<-DESC
                        Check condition on Stream with assert()
                       DESC
  s.homepage         = "https://github.com/muukii/RxAssert"
  s.license          = 'MIT'
  s.author           = { "muukii" => "m@muukii.me" }
  s.source           = { :git => "https://github.com/muukii/RxAssert.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/muukii0803'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxAssert/Classes/**/*'

  s.dependency 'RxSwift', '~> 2.0'
  s.dependency 'RxCocoa', '~> 2.0'
  s.frameworks = 'Foundation'
end
