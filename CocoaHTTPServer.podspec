#
# Be sure to run `pod lib lint CocoaHTTPServer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoaHTTPServer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CocoaHTTPServer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/李亮/CocoaHTTPServer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李亮' => '554166037@qq.com' }
  s.source           = { :git => 'https://github.com/李亮/CocoaHTTPServer.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '8.0'

  s.source_files = 'CocoaHTTPServer/Classes/{Core,Extensions}/**/*.{h,m}'
  s.public_header_files = 'CocoaHTTPServer/Classes/{Core,Extensions}/**/*.h'

  s.xcconfig = {
    "HEADER_SEARCH_PATHS": "\"$(SDKROOT)/usr/include/libxml2\""
  }
  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'
  s.libraries = 'xml2'
  
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'CocoaLumberjack'
  
end
