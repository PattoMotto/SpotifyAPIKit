#
# Be sure to run `pod lib lint SpotifyAPIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SpotifyAPIKit'
  s.version          = '0.1.0'
  s.summary          = 'The Spotify Web API for iOS/macOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The Spotify Web API for iOS/macOS build with Swift 5
                       DESC

  s.homepage         = 'https://github.com/PattoMotto/SpotifyAPIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'PattoMotto'
  s.source           = { :git => 'https://github.com/PattoMotto/SpotifyAPIKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/PattoMotto'
  s.swift_version   = '5.0'

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.12'

  s.source_files = 'SpotifyAPIKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SpotifyAPIKit' => ['SpotifyAPIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
