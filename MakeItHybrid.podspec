#
# Be sure to run `pod lib lint MakeItHybrid.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MakeItHybrid"
  s.version          = "0.0.1"
  s.summary          = "MakeItHybrid let you create your hybrid application very easily for iOS in Swift language."
  s.description      = <<-DESC
						MakeItHybrid let you create your hybrid application very easily for iOS in Swift language. It works only iOS 8.0 and above.
                       DESC
  s.homepage         = "https://github.com/miletliyusuf/MakeItHybrid"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yusufm" => "miletliyusuf@gmail.com" }
  s.source           = { :git => "https://github.com/miletliyusuf/MakeItHybrid.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ysfmltli'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MakeItHybrid' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
