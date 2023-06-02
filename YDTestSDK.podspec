#
#  Be sure to run `pod spec lint FrameworkTestTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "YDTestSDK"
  spec.version      = "1.1.2"
  spec.summary      = "YDTestSDK is a SDK"
  spec.description  = <<-DESC
  这就是一个测试，没别的，你信不信？
                   DESC
  spec.homepage     = "https://github.com/yangdimuyi/YDTestSDK.git"
  
  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "yangdiyangdi" => "yangdi.yang@adwangmai.com" }

 
  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/yangdimuyi/YDTestSDK.git", :tag => "#{spec.version}" }

  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  spec.resource  = "FrameworkFramework/YDTestSDK.bundle"

  spec.ios.vendored_frameworks = 'FrameworkFramework/YDTestSDK.framework'
  
  spec.frameworks = 'AppTrackingTransparency','AssetsLibrary','AdSupport','Audiotoolbox','AddressBook','AVKit','AVFoundation','Accelerate','CoreServices','CoreImage','CoreLocation','CoreTelephony','CoreText','CoreMotion','CoreGraphics','CoreMedia','CoreData','DeviceCheck','Foundation','ImageIO','JavaScriptCore','MobileCoreServices','MapKit','MessageUI','MediaPlayer','Photos','QuartzCore','QuickLook','SystemConfiguration','Security','StoreKit','SafariServices','UIKit','WebKit'
  
  spec.libraries = "z.tbd","resolv.9.tbd","xml2.tbd","c++.tbd","c++abi.tbd","z.1.2.5.tbd","sqlite3.0.tbd","sqlite3.tbd","bz2.1.0.tbd","bz2.tbd","iconv.tbd"
  
  spec.requires_arc = true


end
