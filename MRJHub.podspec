#
# Be sure to run `pod lib lint MRJHub.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MRJHub'
  s.version          = '0.1.3.1'
  s.summary          = '动态加载框，借助于MBProgressHUD写成的一个类别！'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mrjlovetian/MRJHub'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mrjlovetian@gmail.com' => 'mrjyuhongjiang@gmail.com' }
  s.source           = { :git => 'https://github.com/mrjlovetian/MRJHub.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MRJHub/Classes/**/*'
    s.resources = 'MRJHub/Assets/*.png'

  # s.resource_bundles = {
  #   'MRJHub' => ['MRJHub/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MBProgressHUD'
end
