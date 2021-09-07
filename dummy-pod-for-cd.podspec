#
# Be sure to run `pod lib lint dummy-pod-for-cd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'dummy-pod-for-cd'
  s.version          = '0.1.0'
  s.summary          = 'just dummy pod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Dummy pod for testing cd'

  s.homepage         = 'https://github.com/skyflow-tejesh-reddy/ios-cd-test'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tejesh Reddy' => 'tejesh.allampati@skyflow.com' }
  
  s.swift_version = '4.2'

  s.platform     = :ios, "9.0"
  
  s.source           = { :git => 'https://github.com/skyflow-tejesh-reddy/ios-cd-test.git', :tag => s.version.to_s }
  

  s.ios.deployment_target = '9.0'

  s.source_files = 'dummy-pod-for-cd/Classes/**/*'
  

end
