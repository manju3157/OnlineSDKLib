

Pod::Spec.new do |s|
  s.name             = 'OnlineSDKLib'
  s.version          = '0.1.0'
  s.summary          = 'MY first online SDK library'


  s.description      = <<-DESC
My First SDK to take mobile surveys
                       DESC

  s.homepage         = 'https://github.com/manju3157/OnlineSDKLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manjunath.ramesh@onepointglobal.com' => 'manjunath.ramesh@onepointglobal.com' }
  s.source           = { :git => 'https://github.com/manju3157/OnlineSDKLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  # s.source_files = 'OnlineSDKLib/Classes/**/*'
  s.ios.vendored_library = 'libOnePointSDK.a'
  s.preserve_paths = 'libOnePointSDK.a'

  s.source_files = "include/OPGSDK/*.h"
  s.public_header_files = "include/OPGSDK/*.h"
  
  s.resource_bundles = {
     'OnlineSDKLib' => ['OnlineSDKLib/Assets/OPGResourceBundle.bundle']
   }
   s.resources = "OnlineSDKLib/Assets/OPGResourceBundle.bundle"

  s.xcconfig = { 'OTHER_LDFLAGS' => '-lz -ObjC'}
   s.library = 'c++', 'iconv', 'z'
end
