#
# Be sure to run `pod lib lint ZKNavigationController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZKNavigationController'
  s.version          = '0.0.1'
  s.summary          = 'Simple, yet clean way to show alerts via NavigationController'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ZKNavigationController is a simple way to notify your users in a captivating way!
                       DESC

  s.homepage         = 'https://github.com/ZacharyKhan/ZKNavigationController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ZacharyKhan' => 'zachary.khan3@gmail.com' }
  s.source           = { :git => 'https://github.com/ZacharyKhan/ZKNavigationController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ZacharyKhan3'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZKNavigationController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZKNavigationController' => ['ZKNavigationController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
